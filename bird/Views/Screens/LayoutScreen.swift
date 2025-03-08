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
                BottomNavBar(selectedTab: $selectedTab) { newTab in
                    print("Selected Tab: \(newTab)")
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .ignoresSafeArea(.all,edges: .bottom)
    }
}

#Preview {
    LayoutScreen()
}
