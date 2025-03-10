//
//  SocialMediaButton.swift
//  bird
//
//  Created by Ahmed Shawky on 02/03/2025.
//

import SwiftUI

struct SocialMediaButton: View {
    var image: String
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            ZStack {
                Color.white
                    .cornerRadius(100)
                    .shadow(color: Color.shadowColor.opacity(0.1), radius: 5, x:0, y: 5)
                
                Image(image)
                    .resizable()
                    .scaledToFit()
                    .padding(15)
            }
            .frame(width: 60, height: 60)
        }
    }
}

#Preview {
    SocialMediaButton(image: Images.apple, action: {
        print("Button Clicked")
    })
}
