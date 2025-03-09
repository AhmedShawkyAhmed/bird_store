//
//  NotificationListView.swift
//  bird
//
//  Created by Ahmed Shawky on 09/03/2025.
//

import SwiftUI

struct NotificationListView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 10) {
                ForEach(notificationsList) {
                    notification in NotificationWidget(notificationItme: notification)
                }
            }
            .padding()
            .padding(.bottom, 60)
        }
    }
}

#Preview {
    NotificationListView()
}
