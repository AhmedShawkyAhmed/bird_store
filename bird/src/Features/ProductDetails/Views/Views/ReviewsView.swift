//
//  ReviewsView.swift
//  bird
//
//  Created by Ahmed Shawky on 14/03/2025.
//

import SwiftUI

struct ReviewsView: View {
    var reviews: [ReviewModel]
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            ForEach(reviews.indices, id: \.self) {
                index in ReviewWidget(review: reviews[index])
            }
        }
    }
}

#Preview {
    ReviewsView(reviews: [])
}
