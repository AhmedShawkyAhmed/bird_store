//
//  ProductsListView.swift
//  bird
//
//  Created by Ahmed Shawky on 09/03/2025.
//

import SwiftUI

struct ProductsListView: View {
    @State private var products = productList
    let showFavoritesOnly: Bool
    
    let columns = [
        GridItem(.flexible(), spacing: 10),
        GridItem(.flexible(), spacing: 10)
    ]
    var body: some View {
//        ScrollView {
            LazyVGrid(columns: columns, spacing: 10) {
                ForEach($products.filter {
                    showFavoritesOnly ? $0.isFavorite.wrappedValue : true
                })
                { $product in ProductCard(product: $product)}
            }
            .padding(.horizontal, 5)
            .padding(.bottom, 60)
//        }
    }
}

#Preview {
    ProductsListView(showFavoritesOnly: false)
}
