//
//  ImageCard.swift
//  bird
//
//  Created by Ahmed Shawky on 12/03/2025.
//

import SwiftUI

struct ImageCard: View {
    var imageName: String
    var width: Double = 150
    var height: Double = 150
    
    var body: some View {
        Image(imageName)
            .resizable()
            .scaledToFit()
            .frame(width: width, height: height)
            .padding(15)
            .background(Color.white)
            .cornerRadius(20)
            .shadow(color: Color.shadowColor.opacity(0.2), radius: 4)
    }
}

#Preview {
    ImageCard(imageName: "")
}
