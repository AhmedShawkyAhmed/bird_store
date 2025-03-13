//
//  IconButton.swift
//  bird
//
//  Created by Ahmed Shawky on 03/03/2025.
//

import SwiftUI

struct IconButton: View {
    var icon: String
    var width: Double = 25
    var height: Double = 25
    var padding: Double = 14
    var cornerRadius: Double = 12
    var foregroundColor: Color = Color.gray.opacity(0.8)
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Image(systemName: icon)
                .resizable()
                .scaledToFit()
                .frame(width: width, height: height)
                .foregroundColor(foregroundColor)
                .padding(padding)
                .background(Color.white)
                .cornerRadius(cornerRadius)
                .shadow(color: Color.shadowColor.opacity(0.2), radius: 4, x: 0, y: 4)
        }
    }
}

#Preview {
    IconButton(
        icon: "house", action: {}
    )
}
