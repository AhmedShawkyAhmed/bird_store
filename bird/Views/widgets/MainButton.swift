//
//  MainButton.swift
//  bird
//
//  Created by Ahmed Shawky on 02/03/2025.
//

import SwiftUI

struct MainButton: View {
    var text: String
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(text)
                .font(.headline)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, maxHeight: 45)
                .background(LinearGradient(
                    gradient: Gradient(
                        colors: [
                            Color.Primary,
                            Color.Primary.opacity(0.80),
                            Color.Primary.opacity(0.60),
                            Color.Primary.opacity(0.40)
                        ]),
                    startPoint: .leading,
                    endPoint: .trailing
                ))
                .cornerRadius(100)
                .shadow(color: Color.black.opacity(0.2), radius: 4, x: 0, y: 4)
        }
        .padding(.horizontal, 30)
    }
}

#Preview {
    MainButton(text: "Click", action: {
        print("Button Clicked")
    })
}
