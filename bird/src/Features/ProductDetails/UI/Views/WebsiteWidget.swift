//
//  WebsiteWidget.swift
//  bird
//
//  Created by Ahmed Shawky on 13/03/2025.
//

import SwiftUI

struct WebsiteWidget: View {
    var product: ProductModel
    
    var body: some View {
        HStack {
            ImageCard(
                imageName: product.brand.image,
                width: 40,
                height: 40,
                padding: 10,
                cornerRadius: 13
            )
            
            VStack(alignment: .leading) {
                Text("\(product.brand.text) Official Store")
                    .font(.system(size: 16))
                Spacer()
                Text("View Store")
                    .font(.system(size: 13))
                    .foregroundColor(.secondary)
            }
            
            Spacer()
            
            IconButton(
                icon: "arrow.forward",
                width: 15,
                height: 15,
                padding: 8,
                cornerRadius: 5,
                foregroundColor: .Primary,
                action: {}
            )
        }
        .frame(width: .infinity, height: 45)
        .padding(15)
        .background(Color.white)
        .cornerRadius(10)
        .shadow(color: Color.shadowColor.opacity(0.2), radius: 4)
        .padding(.horizontal, 10)
    }
}

#Preview {
    WebsiteWidget(product: productList[0])
}
