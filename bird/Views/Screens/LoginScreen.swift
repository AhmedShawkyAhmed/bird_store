//
//  LoginView.swift
//  bird
//
//  Created by Ahmed Shawky on 01/03/2025.
//

import SwiftUI

struct LoginScreen: View {
    var body: some View {
        ZStack(alignment: .top) {
            Image("background")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity, maxHeight: 350)
                .ignoresSafeArea(.all, edges: .top)
                .offset(y: -100)
            
            Color.white
                .frame(maxWidth: .infinity, maxHeight: 800)
                .cornerRadius(60)
                .offset(y: 180)
            
            LoginView()
            
            ORWidget().offset(y: 530)
            
            HStack(spacing: 20) {
                SocialMediaButton(image: "f", action: {
                    print("Facebook")
                })
                SocialMediaButton(image: "apple", action: {
                    print("Apple")
                })
                SocialMediaButton(image: "google", action: {
                    print("Google")
                })
            }.offset(y: 600)
                
        }
        .ignoresSafeArea(.all, edges: .bottom)
    }
}

#Preview {
    LoginScreen()
}
