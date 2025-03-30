//
//  NotificationListView.swift
//  bird
//
//  Created by Ahmed Shawky on 09/03/2025.
//

import SwiftUI

struct NotificationListView: View {
    @StateObject private var viewModel = NotificationViewModel()
    
    var body: some View {
        ScrollView {
            VStack(spacing: 10) {
                if viewModel.isLoading {
                    ProgressView()
                        .progressViewStyle(CircularProgressViewStyle())
                        .padding()
                } else {
                    if let errorMessage = viewModel.errorMessage {
                        Text(errorMessage)
                            .foregroundColor(.red)
                    }
                    ForEach(viewModel.notifications, id: \.id) {
                        notification in NotificationWidget(notificationItme: notification)
                    }
                }
            }
            .padding()
            .padding(.bottom, 60)
            .task {
                await viewModel.getNotifications()
            }
        }
    }
}

#Preview {
    NotificationListView()
}
