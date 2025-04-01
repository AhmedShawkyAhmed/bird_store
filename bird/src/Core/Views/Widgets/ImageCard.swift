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
    var padding: Double = 15
    var cornerRadius: Double = 20
    
    var body: some View {
        AsyncImage(url: URL(string: imageName)) { image in
            
            
            image.resizable()
                .scaledToFit()
                .frame(width: width, height: height)
                .padding(padding)
                .background(Color.white)
                .cornerRadius(cornerRadius)
                .shadow(color: Color.shadowColor.opacity(0.2), radius: 4)
        } placeholder: {
            ProgressView()
                .progressViewStyle(CircularProgressViewStyle())
                .frame(width: width, height: height)
                .padding(padding)
        }
    }
}

#Preview {
    ImageCard(imageName: "")
}
