//
//  NotificationViewModel.swift
//  bird
//
//  Created by Ahmed Shawky on 30/03/2025.
//

import Foundation

@MainActor
class NotificationViewModel: ObservableObject {
    @Published var notifications: [NotificationModel] = []
    @Published var errorMessage: String?
    @Published var isLoading: Bool = false
    
    func getNotifications() async {
        isLoading = true
        defer { isLoading = false }
        do {
            let response: APIResponse<[NotificationModel]> = try await APIClient.shared.request(endpoint: EndPoints.notification, method: .GET
            )
            
            notifications = response.data
        } catch {
            print(error)
            
            errorMessage = "Error fetching Notifications: \(error.localizedDescription)"
        }
    }
}
