import Alamofire

class AuthInterceptor: RequestInterceptor {
    private var accessToken: String? = "initialAccessToken"
    private var refreshToken: String? = "validRefreshToken"
    
    // Add token before sending request
    func adapt(_ urlRequest: URLRequest, for session: Session, completion: @escaping (Result<URLRequest, Error>) -> Void) {
        var request = urlRequest
        if let token = accessToken {
            request.setValue("Bearer \(token)", forHTTPHeaderField: "Authorization")
        }
        completion(.success(request))
    }
    
    // Retry on 401
    func retry(_ request: Request, for session: Session, dueTo error: Error, completion: @escaping (RetryResult) -> Void) {
        guard let response = request.task?.response as? HTTPURLResponse, response.statusCode == 401 else {
            completion(.doNotRetry)
            return
        }
        
        // Refresh token
        AF.request("\(EndPoints.baseURL)/auth/refresh",
                   method: .post,
                   parameters: ["refreshToken": refreshToken ?? ""],
                   encoder: JSONParameterEncoder.default)
        .responseDecodable(of: TokenResponse.self) { response in
            switch response.result {
            case .success(let tokenResponse):
                self.accessToken = tokenResponse.accessToken
                completion(.retry) // retry original request
            case .failure:
                completion(.doNotRetry)
            }
        }
    }
}

struct TokenResponse: Decodable {
    let accessToken: String
}

class APIClientAF {
    static let shared = APIClientAF()
    
    private init() {}
    
    private let session: Session = {
        let interceptor = AuthInterceptor()
        return Session(interceptor: interceptor)
    }()
    
    func request<T: Decodable>(_ endpoint: String,
                               method: HTTPMethod,
                               parameters: Parameters? = nil) async throws -> T {
        try await withCheckedThrowingContinuation { continuation in
            session.request("\(EndPoints.baseURL)\(endpoint)",
                            method: Alamofire.HTTPMethod(rawValue: method.rawValue),
                            parameters: parameters,
                            encoding: JSONEncoding.default)
            .validate()
            .responseDecodable(of: T.self) { response in
                switch response.result {
                case .success(let value):
                    continuation.resume(returning: value)
                case .failure(let error):
                    continuation.resume(throwing: error)
                }
            }
        }
    }
}
