//
//  ProductDetailsScreen.swift
//  bird
//
//  Created by Ahmed Shawky on 10/03/2025.
//

import SwiftUI

struct ProductDetailsScreen: View {
    @Environment(\.dismiss) private var dismiss
    @State private var selectedTab = 1
    let product: ProductModel
    
    var body: some View {
        NavigationStack {
            BackgroundView(
                spacing: 0,
                content: {
                    HStack {
                        IconButton(icon: "chevron.backward", action: {
                            dismiss()
                        })
                        Spacer()
                    }
                    .padding(.bottom, 15)
                    
                    ScrollView(showsIndicators: false) {
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
                            .padding(.horizontal, 40)
                            .padding(.bottom, 15)
                        
                        HStack(spacing: 60) {
                            SectionWidget(title: "Overview", isSelected: selectedTab == 1, action: {
                                selectedTab = 1
                            })
                            SectionWidget(title: "Specification", isSelected: selectedTab == 2, action: {
                                selectedTab = 2
                            })
                            SectionWidget(title: "Review", isSelected: selectedTab == 3, action: {
                                selectedTab = 3
                            })
                        }
                        .padding(.bottom, 20)
                        
                        switch selectedTab {
                        case 1: OvervireView(overviewText: product.overview)
                        case 2: SpecificationView(spesification: product.spesification)
                        case 3: ReviewsView(reviews: product.reviews)
                        default: OvervireView(overviewText: product.overview)
                        }
                    }
                    
                }
            )
        }
        .navigationBarHidden(true)
    }
}

#Preview {
    ProductDetailsScreen(product: ProductModel(
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
    ))
}
