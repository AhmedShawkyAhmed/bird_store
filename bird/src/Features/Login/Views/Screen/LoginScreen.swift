//
//  LoginView.swift
//  bird
//
//  Created by Ahmed Shawky on 01/03/2025.
//

import SwiftUI

struct LoginScreen: View {
    @State private var navigateToOTP = false

    var body: some View {
        NavigationStack {
            ZStack(alignment: .top) {
                Image(Images.backgroundImage)
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: .infinity)
                    .ignoresSafeArea(.all, edges: .top)
                    .offset(y: -100)
                
                Color.white
                    .frame(maxWidth: .infinity, maxHeight: 800)
                    .cornerRadius(60)
                    .offset(y: 180)
                
                LoginView(
                    onTap: {
                        navigateToOTP = true
                    }
                )
                .navigationDestination(isPresented: $navigateToOTP) {
                    VerifyScreen()
                }
                
                ORWidget().offset(y: 530)
                
                HStack(spacing: 20) {
                    SocialMediaButton(image: Images.facebook, action: {
                        print("Facebook")
                    })
                    SocialMediaButton(image: Images.apple, action: {
                        print("Apple")
                    })
                    SocialMediaButton(image: Images.google, action: {
                        print("Google")
                    })
                }.offset(y: 600)
                
            }
            .ignoresSafeArea(.all, edges: .bottom)
        }
        .navigationBarHidden(true)
    }
}

#Preview {
    LoginScreen()
}
