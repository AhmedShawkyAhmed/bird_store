//
//  BottomNavBar.swift
//  bird
//
//  Created by Ahmed Shawky on 07/03/2025.
//

import SwiftUI

struct BottomNavBar: View {
    @Binding var selectedTab: Int
    var onTabChange: ((Int) -> Void)?
    
    func updateTab(_ index: Int) {
            selectedTab = index
            onTabChange?(index)
        }
    
    var body: some View {
        ZStack(alignment: .bottom) {
            CurvedTabBarShape()
                .fill(Color.white)
                .frame(height: 50)
                .shadow(radius: 5)
            
            HStack(alignment: .bottom) {
                TabBarButton(icon: "rectangle.portrait.and.arrow.forward",
                    isSelected: selectedTab == 0) {
                    updateTab(0)
                }
                
                TabBarButton(icon: "heart.fill",
                    isSelected: selectedTab == 1) {
                    updateTab(1)
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
                    updateTab(2)
                }

                TabBarButton(icon: "bell.badge.fill",
                    isSelected: selectedTab == 3) {
                    updateTab(3)
                }
                
                TabBarButton(icon: "gearshape.fill",
                    isSelected: selectedTab == 4) {
                    updateTab(4)
                }
            }
            .padding(.horizontal, 40)
            .padding(.bottom, 15)
        }
        .frame(height: 0,alignment: .bottom)
    }
}

#Preview {
    @Previewable @State var selectedTab = 2
    return BottomNavBar(selectedTab: $selectedTab)
}
