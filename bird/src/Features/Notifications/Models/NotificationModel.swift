//
//  NotificationModel.swift
//  bird
//
//  Created by Ahmed Shawky on 09/03/2025.
//

import Foundation

struct NotificationModel: Codable {
    let id: Int
    let title: String
    let description: String
    
    enum CodingKeys: String, CodingKey {
        case id
        case title
        case description
    }
}
