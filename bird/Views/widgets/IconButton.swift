//
//  IconButton.swift
//  bird
//
//  Created by Ahmed Shawky on 03/03/2025.
//

import SwiftUI

struct IconButton: View {
    var icon: String
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Image(systemName: icon)
                .resizable()
                .scaledToFit()
                .frame(width: 25, height: 25)
                .foregroundColor(.gray.opacity(0.8))
                .padding(14)
                .background(Color.white)
                .cornerRadius(12)
                .shadow(color: Color.shadowColor.opacity(0.2), radius: 4, x: 0, y: 4)
        }
    }
}

#Preview {
    IconButton(
        icon: "house", action: {}
    )
}
