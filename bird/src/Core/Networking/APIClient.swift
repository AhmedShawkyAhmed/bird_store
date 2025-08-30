import Foundation

enum HTTPMethod: String {
    case GET, POST, PUT, DELETE
}

enum APIError: Error {
    case invalidURL
    case requestFailed
    case decodingFailed
    case unauthorized
    case refreshTokenFailed
}

/// Interceptor protocol
protocol APIInterceptor {
    func adapt(_ request: URLRequest) -> URLRequest
    func process(response: URLResponse?, data: Data?) -> Void
}

/// Example interceptor: Logging
class LoggingInterceptor: APIInterceptor {
    func adapt(_ request: URLRequest) -> URLRequest {
        print("➡️ Sending Request: \(request.httpMethod ?? "") \(request.url?.absoluteString ?? "")")
        return request
    }
    
    func process(response: URLResponse?, data: Data?) {
        if let httpResponse = response as? HTTPURLResponse {
            print("⬅️ Response: \(httpResponse.statusCode)")
        }
    }
}

class APIClient {
    static let shared = APIClient()
    private init() {}
    
    private var interceptors: [APIInterceptor] = [LoggingInterceptor()]
    
    // Simulated tokens
    private var accessToken: String? = "initialAccessToken"
    private var refreshToken: String? = "validRefreshToken"
    
    // MARK: - Request
    func request<T: Decodable>(
        endpoint: String,
        method: HTTPMethod,
        body: Encodable? = nil,
        headers: [String: String] = [:]
    ) async throws -> T {
        
        guard let url = URL(string: "\(EndPoints.baseURL)\(endpoint)") else {
            throw APIError.invalidURL
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = method.rawValue
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        // Add token if available
        if let token = accessToken {
            request.setValue("Bearer \(token)", forHTTPHeaderField: "Authorization")
        }
        
        headers.forEach { request.setValue($0.value, forHTTPHeaderField: $0.key) }
        
        if let body = body {
            request.httpBody = try JSONEncoder().encode(body)
        }
        
        // Apply interceptors (before request)
        for interceptor in interceptors {
            request = interceptor.adapt(request)
        }
        
        do {
            let (data, response) = try await URLSession.shared.data(for: request)
            
            // Apply interceptors (after response)
            for interceptor in interceptors {
                interceptor.process(response: response, data: data)
            }
            
            guard let httpResponse = response as? HTTPURLResponse else {
                throw APIError.requestFailed
            }
            
            // Handle Unauthorized → try refresh
            if httpResponse.statusCode == 401 {
                guard try await refreshAccessToken() else {
                    throw APIError.refreshTokenFailed
                }
                // Retry once with new token
                return try await request(endpoint: endpoint, method: method, body: body, headers: headers)
            }
            
            guard (200...299).contains(httpResponse.statusCode) else {
                throw APIError.requestFailed
            }
            
            return try JSONDecoder().decode(T.self, from: data)
            
        } catch {
            throw APIError.requestFailed
        }
    }
    
    // MARK: - Refresh Token
    private func refreshAccessToken() async throws -> Bool {
        guard let refreshToken = refreshToken else { return false }
        
        // Example: call refresh endpoint
        let url = URL(string: "\(EndPoints.baseURL)/auth/refresh")!
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request.httpBody = try JSONSerialization.data(withJSONObject: ["refreshToken": refreshToken])
        
        let (data, response) = try await URLSession.shared.data(for: request)
        guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
            return false
        }
        
        struct TokenResponse: Decodable { let accessToken: String }
        if let tokenResponse = try? JSONDecoder().decode(TokenResponse.self, from: data) {
            self.accessToken = tokenResponse.accessToken
            return true
        }
        return false
    }
}
