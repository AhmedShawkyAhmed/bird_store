//
//  FAQModel.swift
//  bird
//
//  Created by Ahmed Shawky on 02/03/2025.
//

import Foundation

struct FAQModel: Codable {
    let id: Int
    let title: String
    let description: String
    
    enum CodingKeys: String, CodingKey {
        case id
        case title = "question"
        case description = "answer"
    }
}
