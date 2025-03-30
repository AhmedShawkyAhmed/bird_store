import Foundation

enum HTTPMethod: String {
    case GET, POST, PUT, DELETE
}

enum APIError: Error {
    case invalidURL
    case requestFailed
    case decodingFailed
}

class APIClient {
    static let shared = APIClient() // Singleton instance
    
    private init() {}

    func request<T: Decodable>(
        endpoint: String,
        method: HTTPMethod,
        body: Encodable? = nil,
        headers: [String: String] = [:]
    ) async throws -> T {
        
        // Construct the URL
        guard let url = URL(string: "\(EndPoints.baseURL)\(endpoint)") else {
            throw APIError.invalidURL
        }
        
        // Configure request
        var request = URLRequest(url: url)
        request.httpMethod = method.rawValue
        
        // Add headers
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        headers.forEach { request.setValue($0.value, forHTTPHeaderField: $0.key) }
        
        // Encode body if present
        if let body = body {
            request.httpBody = try JSONEncoder().encode(body)
        }
        
        // Make API call
        let (data, response) = try await URLSession.shared.data(for: request)
        
        // Validate response
        guard let httpResponse = response as? HTTPURLResponse, (200...299).contains(httpResponse.statusCode) else {
            throw APIError.requestFailed
        }
        
        // Decode JSON response
        do {
            return try JSONDecoder().decode(T.self, from: data)
        } catch {
            throw APIError.decodingFailed
        }
    }
}
