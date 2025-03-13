//
//  ProductDetailsScreen.swift
//  bird
//
//  Created by Ahmed Shawky on 10/03/2025.
//

import SwiftUI

struct ProductDetailsScreen: View {
    let product: ProductModel
    
    var body: some View {
        BackgroundView(
            spacing: 0,
            content: {
//                HStack {
//                    IconButton(icon: "arrow.left", action: {})
//                    Spacer()
//                }
//                .padding(.bottom, 15)
                
                ScrollView {
                    HStack {
                        Text(product.name)
                            .font(.system(size: 18, weight: .bold))
                            .foregroundColor(.white)
                        Spacer()
                    }
                    
                    HStack {
                        Text("Type: \(product.type)")
                            .font(.system(size: 15, weight: .medium))
                            .foregroundColor(.white)
                        Spacer()
                    }
                    .padding(.bottom, 15)
                    
                    ImageCard(
                        imageName: product.image,
                        width: 330,
                        height: 230
                    )
                    .padding(.bottom, 10)
                    
                    GalleryView()
                    
                    WebsiteWidget(product: product)
                    
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Price")
                                .foregroundColor(.secondary)
                                .font(.system(size: 18))
                                .padding(.bottom, 1)
                            
                            Text(product.price)
                                .foregroundColor(.black)
                                .font(.system(size: 18))
                        }
                        
                        MainButton(
                            text: "Add to Cart",
                            horizontalPadding: 0,
                            cornerRadius: 12,
                            action: {}
                        ).padding(.leading, 40)
                    }
                    .padding(.vertical)
                    .padding(.horizontal)
                    
                    Divider()
                        .padding(.horizontal, 20)
                }
                
            }
        )
    }
}

#Preview {
    ProductDetailsScreen(product: productList[0])
}
