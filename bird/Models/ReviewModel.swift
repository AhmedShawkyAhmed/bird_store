//
//  ReviewModel.swift
//  bird
//
//  Created by Ahmed Shawky on 10/03/2025.
//

import Foundation

struct ReviewModel: Identifiable {
    let id = UUID()
    let reviewer: String
    let comment: String
    let rate: Double
}

let reviewList: [ReviewModel] = [
    ReviewModel(reviewer: "John Doe", comment: "Excellent laptop! Fast performance, great display, and solid battery life. Perfect for work and gaming.", rate: 5.0),
    ReviewModel(reviewer: "Sarah Johnson", comment: "Great value for the price. The keyboard is comfortable, but the battery could last longer.", rate: 4.0),
    ReviewModel(reviewer: "Michael Smith", comment: "Decent laptop but gets a bit hot under heavy load. Good for casual users.", rate: 3.5),
    ReviewModel(reviewer: "Emily Brown", comment: "Sleek design and lightweight. The screen is vibrant, and the speakers are surprisingly good.", rate: 4.5),
    ReviewModel(reviewer: "David Lee", comment: "Disappointed with the battery life, but the overall performance is smooth. Not the best for heavy multitasking.", rate: 3.0),
    ReviewModel(reviewer: "Jessica White", comment: "Amazing laptop! Handles video editing and gaming with ease. Highly recommended.", rate: 5.0),
    ReviewModel(reviewer: "Daniel Garcia", comment: "Good for students and professionals. The build quality feels premium, but I wish it had more ports.", rate: 4.0),
    ReviewModel(reviewer: "Sophia Martinez", comment: "Not bad, but the fan noise is a bit loud. Otherwise, it runs well for daily tasks.", rate: 3.5),
    ReviewModel(reviewer: "Matthew Wilson", comment: "Fast boot-up time and great storage capacity. Perfect for office work and entertainment.", rate: 4.8),
    ReviewModel(reviewer: "Olivia Taylor", comment: "Superb performance, but the touchpad could be more responsive. Still, a great buy!", rate: 4.3),
    ReviewModel(reviewer: "James Anderson", comment: "Runs smoothly, but the webcam quality is poor. Otherwise, it's a solid laptop.", rate: 4.2),
    ReviewModel(reviewer: "Emma Hernandez", comment: "Love the high-resolution display and battery efficiency. Perfect for travel and remote work.", rate: 5.0),
    ReviewModel(reviewer: "Liam Thomas", comment: "Good speed and lightweight. However, I experienced occasional WiFi connectivity issues.", rate: 3.8)
]
