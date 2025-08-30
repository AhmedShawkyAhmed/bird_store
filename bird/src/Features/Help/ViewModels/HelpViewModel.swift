import Foundation

@MainActor
class HelpViewModel: ObservableObject {
    @Published var faqs: [FAQModel] = []
    @Published var errorMessage: String?
    @Published var isLoading: Bool = false
    
    func getFaqs() async {
        isLoading = true
        defer { isLoading = false }
        do{
            let response: APIResponse<[FAQModel]> = try await APIClient.shared.request( // can replace APIClient with APIClientAF
                endpoint: EndPoints.faq,
                method: .GET
            )
            faqs = response.data
        } catch {
            print(error)
            errorMessage = "Error fetching Faqs: \(error.localizedDescription)"
        }
    }
}
