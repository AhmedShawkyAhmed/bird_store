//
//  NotificationWidget.swift
//  bird
//
//  Created by Ahmed Shawky on 09/03/2025.
//

import SwiftUI

struct NotificationWidget: View {
    var notificationItme: NotificationModel
    @State private var expandedIndex: Int? = nil
    
    var body: some View {
        DisclosureGroup(
            isExpanded: Binding(
                get: { expandedIndex == notificationItme.id },
                set: { expandedIndex = $0 ? notificationItme.id : nil }
            )
        ) {
            Text(notificationItme.description)
                .font(.system(size: 14))
                .foregroundColor(.black)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.vertical, 10)
                .padding(.horizontal, 5)
        } label: {
            HStack {
                Image(systemName: "bell.badge")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 15)
                    .foregroundColor(.Primary)
                
                Text(notificationItme.title)
                    .font(.system(size: 18))
                    .foregroundColor(.Primary)
            }
        }
        .padding(10)
        .background(Color.white)
        .cornerRadius(10)
        .shadow(color: Color.shadowColor.opacity(0.3), radius: 5, x: 0, y: 2)
    }
}

#Preview {
    NotificationWidget(notificationItme: NotificationModel(id: 1, title: "sf", description: "fs"))
}
