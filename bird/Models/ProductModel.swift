//
//  ProductModel.swift
//  bird
//
//  Created by Ahmed Shawky on 08/03/2025.
//

import Foundation

struct ProductModel: Identifiable {
    let id = UUID()
    let brand: BrandModel
    let name: String
    let price: String
    let image: String
    var isFavorite: Bool
}

let productList: [ProductModel] = [
    ProductModel(brand: brandList[1], name: "Predator Helios 300", price: "30,000 EGP", image: Images.acerLaptop, isFavorite: true),
    ProductModel(brand: brandList[2], name: "Blade Stealth 13", price: "32,000 EGP", image: Images.razerLaptop, isFavorite: false),
    ProductModel(brand: brandList[3], name: "Macbook Pro M4", price: "150,000 EGP", image: Images.appleLaptop, isFavorite: false),
    ProductModel(brand: brandList[1], name: "Predator Triton 300", price: "40,000 EGP", image: Images.acerLaptop, isFavorite: true),
    ProductModel(brand: brandList[2], name: "Blade Stealth 16", price: "53,500 EGP", image: Images.razerLaptop, isFavorite: false),
    ProductModel(brand: brandList[3], name: "Macbook Pro M4 pro", price: "180,900 EGP", image: Images.appleLaptop, isFavorite: true),
]
