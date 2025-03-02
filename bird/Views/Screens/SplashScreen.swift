//
//  SplashView.swift
//  bird
//
//  Created by Ahmed Shawky on 01/03/2025.
//

import SwiftUI

struct SplashScreen: View {
    var body: some View {
        ZStack {
            // Top
            Color.PrimaryDark
                .frame(width: 300, height: 80)
                .cornerRadius(100)
                .rotationEffect(.degrees(150))
                .offset(x: -120, y: -260)
            
        ZStack {
            LinearGradient(
                gradient: Gradient(
                    colors: [
                        Color.Primary,
                        Color.white,
                    ]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .frame(width: 200, height: 200)
            .cornerRadius(100)
            
            Color.Primary
                .frame(width: 180, height: 180)
                .cornerRadius(100)
                .offset(x: -10, y: 20)
        }.offset(x: 200, y: -220)
            
            // Bottom
            Color.PrimaryDark
                .frame(width: 300, height: 80)
                .cornerRadius(100)
                .rotationEffect(.degrees(150))
                .offset(x: 120, y: 280)
            
            ZStack {
                LinearGradient(
                    gradient: Gradient(
                        colors: [
                            Color.Primary,
                            Color.white,
                        ]),
                    startPoint: .bottomTrailing,
                    endPoint: .topLeading
                ).rotationEffect(.degrees(-40))
                .frame(width: 200, height: 200)
                .cornerRadius(100)
                
                Color.Primary
                    .frame(width: 180, height: 180)
                    .cornerRadius(100)
                    .offset(x: 10, y: 15)
            }.offset(x: -200, y: 280)
            
            // Logo
            Image("appLogo")
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 300)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.Primary)
        .ignoresSafeArea()
        
    }
}

#Preview {
    SplashScreen()
}
