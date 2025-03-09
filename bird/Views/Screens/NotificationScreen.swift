//
//  NotificationScreen.swift
//  bird
//
//  Created by Ahmed Shawky on 02/03/2025.
//

import SwiftUI

struct NotificationScreen: View {
    var body: some View {
        BackgroundView(
            spacing: 0,
            content: {
                Text("Notifications")
                    .font(.title)
                    .padding(.vertical, 20)
                    .foregroundColor(Color.white)
                
                NotificationListView()
            }
        )
    }
}

#Preview {
    NotificationScreen()
}
