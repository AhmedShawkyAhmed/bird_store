//
//  ProductCard.swift
//  bird
//
//  Created by Ahmed Shawky on 08/03/2025.
//

import SwiftUI

struct ProductCard: View {
    @Binding var product: ProductModel
    @State private var navigateToProduct = false
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                ZStack(alignment: .topTrailing) {
                    ImageCard(
                        imageName: product.image,
                        width: 150,
                        height: 150
                    ).onTapGesture {
                        navigateToProduct = true
                    }
                    
                    Image(systemName: product.isFavorite ? "heart.fill" : "heart")
                        .resizable()
                        .scaledToFit()
                        .padding(16)
                        .frame(width: 60,height: 60)
                        .foregroundColor(product.isFavorite ? Color.red : Color.gray)
                        .onTapGesture {
                            product.isFavorite.toggle()
                        }
                }
                
                ZStack(alignment: .bottomTrailing) {
                    VStack(alignment: .leading) {
                        Text(product.brand.text)
                            .font(.system(size: 20))
                            .foregroundColor(.Primary)
                        
                        Text(product.name)
                            .frame(width: 165,alignment: .topLeading)
                            .font(.system(size: 14))
                            .foregroundColor(.black.opacity(0.7))
                            .padding(.bottom, 20)
                        
                        Text(product.price)
                            .font(.system(size: 11))
                            .foregroundColor(.black.opacity(0.7))
                    }
                    .padding(.leading, 15)
                    .padding(.bottom, 20)
                    
                    Image(systemName: "plus")
                        .resizable()
                        .scaledToFit()
                        .padding(10)
                        .frame(width: 40,height: 40, alignment: .center)
                        .foregroundColor(Color.white)
                        .background(LinearGradient(
                            colors: [
                                .Primary,
                                .Primary.opacity(0.7),
                                .Primary.opacity(0.4),
                                .white],
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing))
                        .mask(
                            RoundedRectangle(cornerRadius: 20)
                                .path(in: CGRect(x: 0, y: 0, width: 150, height: 100))
                        )
                }
            }
            .background(Color.white)
            .cornerRadius(20)
            .shadow(color: Color.shadowColor.opacity(0.3), radius: 6, x: 0, y: 5)
            .navigationDestination(isPresented: $navigateToProduct) {
                ProductDetailsScreen(product: product)
            }
        }
        .navigationBarHidden(true)
    }
}

#Preview {
    ProductCard(product: .constant(productList[0]))
}
