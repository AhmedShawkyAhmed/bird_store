//
//  GalleryView.swift
//  bird
//
//  Created by Ahmed Shawky on 12/03/2025.
//

import SwiftUI

struct GalleryView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 10) {
                ForEach(galleryImages, id: \.self) {
                    imageName in ImageCard(
                        imageName: imageName,
                        width: 100,
                        height: 100
                    )
                }
            }
            .padding(.vertical)
            .padding(.horizontal, 5)
        }
    }
}

#Preview {
    GalleryView()
}
