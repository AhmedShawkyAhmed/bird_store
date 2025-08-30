import Alamofire
import Foundation

// Actor for concurrency-safe token storage
actor TokenStore {
    var accessToken: String? = "initialAccessToken"
    var refreshToken: String? = "validRefreshToken"
    
    func updateTokens(access: String, refresh: String?) {
        self.accessToken = access
        if let refresh = refresh {
            self.refreshToken = refresh
        }
    }
    
    func clearTokens() {
        self.accessToken = nil
        self.refreshToken = nil
    }
}

final class AuthInterceptor: RequestInterceptor {
    private let tokenStore = TokenStore()
    
    // Add token before sending request
    func adapt(
        _ urlRequest: URLRequest,
        for session: Session,
        completion: @escaping (Result<URLRequest, Error>) -> Void
    ) {
        Task {
            var request = urlRequest
            if let token = await tokenStore.accessToken {
                request.setValue("Bearer \(token)", forHTTPHeaderField: "Authorization")
            }
            completion(.success(request))
        }
    }
    
    // Retry on 401 unauthorized
    func retry(
        _ request: Request,
        for session: Session,
        dueTo error: Error,
        completion: @escaping (RetryResult) -> Void
    ) {
        guard let response = request.task?.response as? HTTPURLResponse,
              response.statusCode == 401 else {
            completion(.doNotRetry)
            return
        }
        
        Task {
            guard let refreshToken = await tokenStore.refreshToken else {
                completion(.doNotRetry)
                return
            }
            
            let refreshEndpoint = "\(EndPoints.baseURL)/auth/refresh"
            
            let refreshRequest = AF.request(
                refreshEndpoint,
                method: .post,
                parameters: ["refreshToken": refreshToken],
                encoder: JSONParameterEncoder.default
            )
            
            refreshRequest.responseDecodable(of: TokenResponse.self) { response in
                switch response.result {
                case .success(let tokenResponse):
                    Task {
                        await self.tokenStore.updateTokens(access: tokenResponse.accessToken, refresh: nil)
                        completion(.retry) // retry original request with new token
                    }
                case .failure:
                    Task {
                        await self.tokenStore.clearTokens()
                        completion(.doNotRetry)
                    }
                }
            }
        }
    }
}

// Response model from refresh endpoint
struct TokenResponse: Decodable {
    let accessToken: String
    let refreshToken: String? // in case API also returns new refresh token
}

// API client using Alamofire + async/await
final class APIClientAF {
    static let shared = APIClientAF()
    
    private let session: Session
    
    private init() {
        let interceptor = AuthInterceptor()
        self.session = Session(interceptor: interceptor)
    }
    
    func request<T: Decodable>(
        _ endpoint: String,
        method: HTTPMethod,
        parameters: Parameters? = nil
    ) async throws -> T {
        try await withCheckedThrowingContinuation { continuation in
            session.request(
                "\(EndPoints.baseURL)\(endpoint)",
                method: Alamofire.HTTPMethod(rawValue: method.rawValue),
                parameters: parameters,
                encoding: JSONEncoding.default
            )
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
