//
//  LayoutScreen.swift
//  bird
//
//  Created by Ahmed Shawky on 02/03/2025.
//

import SwiftUI

struct LayoutScreen: View {
    @State private var selectedTab = 2
    
    var body: some View {
            VStack {
                switch selectedTab {
                case 0: LoginScreen()
                case 1: FavoriteScreen()
                case 2: HomeScreen()
                case 3: NotificationScreen()
                case 4: HelpScreen()
                default: HomeScreen()
                }
                Spacer()
                ZStack(alignment: .bottom) {
                    CurvedTabBarShape()
                        .fill(Color.white)
                        .frame(height: 50)
                        .shadow(radius: 5)
                    
                    HStack(alignment: .bottom) {
                        TabBarButton(icon: "rectangle.portrait.and.arrow.forward",
                            isSelected: selectedTab == 0) {
                            selectedTab = 0
                        }
                        
                        TabBarButton(icon: "heart.fill",
                            isSelected: selectedTab == 1) {
                            selectedTab = 1
                        }
                        
                        ZStack {
                            Circle()
                                .fill(LinearGradient(
                                    gradient: Gradient(
                                    colors: [
                                        Color.Primary.opacity(0.9),
                                        Color.Primary.opacity(0.5),
                                    ]),
                                    startPoint: .topLeading, endPoint: .bottomTrailing))
                                .frame(width: 60, height: 60)
                                .shadow(radius: 5)

                            Image(systemName: "house.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 20, height: 20)
                                .foregroundColor(.white)
                        }
                        .offset(y: -10)
                        .onTapGesture {
                            selectedTab = 2
                        }

                        TabBarButton(icon: "bell.badge.fill",
                            isSelected: selectedTab == 3) {
                            selectedTab = 3
                        }
                        
                        TabBarButton(icon: "gearshape.fill",
                            isSelected: selectedTab == 4) {
                            selectedTab = 4
                        }
                    }
                    .padding(.horizontal, 40)
                    .padding(.bottom, 15)
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .ignoresSafeArea(.all,edges: .bottom)
    }
}

#Preview {
    LayoutScreen()
}
