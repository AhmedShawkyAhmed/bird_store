//
//  ProductsListView.swift
//  bird
//
//  Created by Ahmed Shawky on 09/03/2025.
//

import SwiftUI

struct ProductsListView: View {
    @StateObject private var viewModel = HomeViewModel()
    let showFavoritesOnly: Bool
    
    let columns = [
        GridItem(.flexible(), spacing: 10),
        GridItem(.flexible(), spacing: 10)
    ]
    var body: some View {
        ScrollView {
            if viewModel.isProductLoading {
                ProgressView()
                    .progressViewStyle(CircularProgressViewStyle())
                    .padding()
            } else {
                if let errorMessage = viewModel.errorMessage {
                    Text(errorMessage)
                        .foregroundColor(.red)
                }
                
                LazyVGrid(columns: columns, spacing: 10) {
                    ForEach($viewModel.products.indices.filter { index in
                        showFavoritesOnly ? viewModel.products[index].isFavorite : true
                    }, id: \.self) { index in
                        ProductCard(product: $viewModel.products[index])
                    }
                }
                .padding(.horizontal, 5)
                .padding(.bottom, 60)
            }
        }
    }
}

#Preview {
    ProductsListView(showFavoritesOnly: false)
}
