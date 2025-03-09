//
//  HomeScreen.swift
//  bird
//
//  Created by Ahmed Shawky on 02/03/2025.
//

import SwiftUI

struct HomeScreen: View {
    @State private var selectedBrand: String = "All"
    
    var body: some View {
        BackgroundView(
            spacing: 0,
            horizontalPadding: 0,
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
                .padding(.horizontal, 15)
                AdsView(ads: adItems)
                    .padding(.top, 15)
                    .padding(.horizontal, 15)
                BrandFilterView(selectedBrand: $selectedBrand)
                ProductsListView()
            }
        )
        .onChange(of: selectedBrand) { oldBrand, newBrand in
            print("Selected brand in HomeScreen: \(newBrand)")
        }
    }
}

#Preview {
    HomeScreen()
}
