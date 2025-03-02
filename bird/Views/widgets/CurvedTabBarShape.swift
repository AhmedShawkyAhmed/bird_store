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
        
        path.move(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: (width / 2) - 38, y: 0))
        
        path.addQuadCurve(to: CGPoint(x: (width / 2) + 38, y: 0),
                          control: CGPoint(x: width / 2, y: 60))
        
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
