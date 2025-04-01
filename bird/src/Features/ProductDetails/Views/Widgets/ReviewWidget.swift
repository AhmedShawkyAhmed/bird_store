//
//  ReviewWidget.swift
//  bird
//
//  Created by Ahmed Shawky on 14/03/2025.
//

import SwiftUI

struct ReviewWidget: View {
    var review: ReviewModel
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .center) {
                Text(review.reviewer)
                    .font(.system(size: 15))
                
                Spacer()
                
                Text("( \(review.rating) )")
                    .font(.system(size: 10))
                
                Image(systemName: "star.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 15, height: 15)
                    .foregroundColor(.yellow)
            }
            
            Text(review.comment)
                .font(.system(size: 13))
                .foregroundColor(.black.opacity(0.8))
        }
        .frame(width: .infinity)
        .padding()
        .background(.white)
        .cornerRadius(10)
        .shadow(color: Color.shadowColor.opacity(0.2), radius: 4)
        .padding(.horizontal, 15)
        .padding(.vertical, 3)
    }
}

#Preview {
    ReviewWidget(
        review: ReviewModel(
            id: 1,
            reviewer: "Michael Smith",
            comment: "Decent laptop but gets a bit hot under heavy load. Good for casual users.",
            rating:3
        )
    )
}
