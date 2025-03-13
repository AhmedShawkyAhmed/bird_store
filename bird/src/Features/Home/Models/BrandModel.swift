//
//  BrandModel.swift
//  bird
//
//  Created by Ahmed Shawky on 08/03/2025.
//

import Foundation

struct BrandModel: Identifiable {
    let id = UUID()
    let image: String
    let text: String
}

let brandList: [BrandModel] = [
    BrandModel(image: Images.allBrands, text: "All"),
    BrandModel(image: Images.acer, text: "Acer"),
    BrandModel(image: Images.razer, text: "Razer"),
    BrandModel(image: Images.apple, text: "Apple")
]
