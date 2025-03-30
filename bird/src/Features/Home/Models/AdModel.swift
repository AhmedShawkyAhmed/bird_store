//
//  AdModel.swift
//  bird
//
//  Created by Ahmed Shawky on 03/03/2025.
//

import Foundation

struct AdModel: Codable {
    let id: Int
    let image: String
    let title: String
    let description: String
    
    enum CodingKeys: String, CodingKey {
        case id
        case image
        case title
        case description
    }
}

