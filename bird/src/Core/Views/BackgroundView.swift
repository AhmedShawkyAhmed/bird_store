//
//  BackgroundView.swift
//  bird
//
//  Created by Ahmed Shawky on 02/03/2025.
//

import SwiftUI

struct BackgroundView<Content: View>: View {
    var spacing: Double = 60
    var horizontalPadding: Double = 15
    let content: Content

    init(spacing: Double = 60,horizontalPadding: Double = 15, @ViewBuilder content: () -> Content) {
        self.spacing = spacing
        self.horizontalPadding = horizontalPadding
        self.content = content()
    }
    
    var body: some View {
        VStack(alignment: .center, spacing: spacing) {
            content.padding(.horizontal, horizontalPadding)
        }
        .frame(maxWidth: .infinity,
               maxHeight: .infinity,
               alignment: .top)
        .background(LinearGradient(
            gradient: Gradient(
                colors: [
                    Color.Primary.opacity(0.8),
                    Color.Primary.opacity(0.4),
                    Color.white,
                    Color.white,
                    Color.white
                ]),
            startPoint: .top,
            endPoint: .bottom
        ))
    }
}

#Preview {
    BackgroundView(content: {})
}
