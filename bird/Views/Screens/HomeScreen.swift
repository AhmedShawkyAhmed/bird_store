//
//  HomeScreen.swift
//  bird
//
//  Created by Ahmed Shawky on 02/03/2025.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        BackgroundView(
            spacing: 0,
            content: {
                HStack {
                    MainTextField(
                        hint: "Search",
                        horizontalPadding: 0,
                        height: 50,
                        suffixIcon: "magnifyingglass",
                        onSuffixTap: {
                            print("Search")
                        }
                    )
                        .padding(.trailing, 10)
                    IconButton(
                        icon: "line.3.horizontal.decrease.circle",
                        action: {
                            print("Filter")
                        }
                    )
                }
                AdsView(ads: adItems)
                    .padding(.vertical, 15)
                Spacer()
            }
        )
    }
}

#Preview {
    HomeScreen()
}
