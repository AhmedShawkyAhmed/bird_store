//
//  FavoriteScreen.swift
//  bird
//
//  Created by Ahmed Shawky on 02/03/2025.
//

import SwiftUI

struct FavoriteScreen: View {
    var body: some View {
        BackgroundView(
            spacing: 0,
            horizontalPadding: 0,
            content: {
                Text("Favorites")
                    .font(.title)
                    .padding(.vertical, 20)
                    .foregroundColor(Color.white)
                
                ProductsListView(showFavoritesOnly: true)
            }
        )
    }
}

#Preview {
    FavoriteScreen()
}
