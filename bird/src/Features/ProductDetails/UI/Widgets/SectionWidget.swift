//
//  SectionWidget.swift
//  bird
//
//  Created by Ahmed Shawky on 14/03/2025.
//

import SwiftUI

struct SectionWidget: View {
    var title: String
    var isSelected: Bool
    var action: () -> Void
    
    var body: some View {
        VStack {
            Text(title)
                .padding(0)
            
            Color.white.opacity(0.0)
                .frame(width: 12, height: 12)
                .background(
                    isSelected ?
                    LinearGradient(
                    gradient: Gradient(
                        colors: [
                            Color.Primary,
                            Color.Primary.opacity(0.80),
                            Color.Primary.opacity(0.60),
                            Color.Primary.opacity(0.40)
                        ]),
                    startPoint: .leading,
                    endPoint: .trailing
                    )
                    : LinearGradient(
                        gradient: Gradient(
                            colors: []),
                        startPoint: .leading,
                        endPoint: .trailing
                        )
                )
                .cornerRadius(100)
                .shadow(color: Color.shadowColor.opacity(isSelected ? 0.2 : 0.0), radius: 4, x: 0, y: 4)
        }
        .onTapGesture {
            action()
        }
    }
}

#Preview {
    SectionWidget(title: "Title", isSelected: true, action: {})
}
