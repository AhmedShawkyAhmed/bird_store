//
//  BrandModel.swift
//  bird
//
//  Created by Ahmed Shawky on 08/03/2025.
//

import Foundation

struct BrandModel: Codable {
    let id: Int
    let image: String
    let name: String
    
    enum CodingKeys: String, CodingKey {
        case id
        case image
        case name
    }
}
