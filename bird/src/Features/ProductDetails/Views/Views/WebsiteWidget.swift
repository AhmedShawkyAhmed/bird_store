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
                Text("\(product.brand.name) Official Store")
                    .font(.system(size: 16))
                Spacer()
                Text("View Store")
                    .font(.system(size: 13))
                    .foregroundColor(.secondary)
            }
            
            Spacer()
            
            IconButton(
                icon: "chevron.forward",
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
    WebsiteWidget(
        product:
            ProductModel(
                id: 1,
                brand: BrandModel(
                    id: 1,
                    image: "",
                    name: ""
                ),
                name: "",
                price: "",
                image: "",
                type: "",
                storeURL: "",
                overview: "",
                spesification: SpesificationModel(
                    id: 1,
                    processor: "",
                    graphics: "",
                    display: "",
                    memory: "",
                    storage: "",
                    operatingSystem: "",
                    ports: "",
                    camera: "",
                    audio: "",
                    battery: ""
                ),
                reviews: [],
                isFavorite: false
            )
    )
}
