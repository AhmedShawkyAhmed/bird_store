//
//  TabBarButton.swift
//  bird
//
//  Created by Ahmed Shawky on 02/03/2025.
//

import SwiftUI

struct TabBarButton: View {
    var icon: String
    var isSelected: Bool
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Image(systemName: icon)
                .resizable()
                .scaledToFit()
                .frame(width: 20, height: 20)
                .foregroundColor(isSelected ? .Primary : .gray)
        }
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    TabBarButton(icon: "house", isSelected: false, action: {})
}
