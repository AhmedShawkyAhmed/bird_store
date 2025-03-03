//
//  AdModel.swift
//  bird
//
//  Created by Ahmed Shawky on 03/03/2025.
//

import Foundation

struct AdModel: Identifiable {
    let id = UUID()
    let image: String
    let title: String
    let description: String
}

let adItems: [AdModel] = [
    AdModel(image: "ad", title: "New Release", description: "Acer Predator Helios 100"),
    AdModel(image: "ad", title: "New Laptop", description: "MacBook Pro M4"),
    AdModel(image: "ad", title: "New Phone", description: "Samsung Galaxy S24 Ultra"),
    AdModel(image: "ad", title: "New Release", description: "Acer Predator Helios 100"),
    AdModel(image: "ad", title: "New Laptop", description: "MacBook Pro M4"),
    AdModel(image: "ad", title: "New Phone", description: "Samsung Galaxy S24 Ultra")
]
