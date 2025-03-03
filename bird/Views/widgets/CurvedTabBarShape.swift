//
//  CurvedTabBarShape.swift
//  bird
//
//  Created by Ahmed Shawky on 02/03/2025.
//

import SwiftUI


struct CurvedTabBarShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()

        let width = rect.width
        let height = rect.height
        let curveWidth: CGFloat = 72  // Adjust width of the curve
        let curveHeight: CGFloat = 40  // Adjust depth of the curve
        let cornerRadius: CGFloat = 2 // Increased for smoother transition

        path.move(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: (width / 2) - (curveWidth / 2) - cornerRadius, y: 0))

        // Left rounded notch corner
        path.addQuadCurve(to: CGPoint(x: (width / 2) - (curveWidth / 2), y: cornerRadius),
                          control: CGPoint(x: (width / 2) - (curveWidth / 2) - cornerRadius, y: cornerRadius))

        // Smooth curved notch (Bézier for smoother transition)
        path.addCurve(to: CGPoint(x: (width / 2) + (curveWidth / 2), y: cornerRadius),
                      control1: CGPoint(x: width / 2 - 20, y: curveHeight),
                      control2: CGPoint(x: width / 2 + 20, y: curveHeight))

        // Right rounded notch corner
        path.addQuadCurve(to: CGPoint(x: (width / 2) + (curveWidth / 2) + cornerRadius, y: 0),
                          control: CGPoint(x: (width / 2) + (curveWidth / 2) + cornerRadius, y: cornerRadius))

        path.addLine(to: CGPoint(x: width, y: 0))
        path.addLine(to: CGPoint(x: width, y: height))
        path.addLine(to: CGPoint(x: 0, y: height))
        path.closeSubpath()

        return path
    }
}

#Preview {
    CurvedTabBarShape()
}
