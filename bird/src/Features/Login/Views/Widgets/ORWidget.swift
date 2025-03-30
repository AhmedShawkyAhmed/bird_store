//
//  ORWidget.swift
//  bird
//
//  Created by Ahmed Shawky on 02/03/2025.
//

import SwiftUI

struct ORWidget: View {
    var body: some View {
        HStack(alignment: .center) {
            Color.Primary
                .opacity(0.75)
                .cornerRadius(100)
                .frame(width:150, height: 3)
            
            Text("or")
                .font(.system(size: 20))
                .foregroundColor(Color.Primary)
            
            Color.Primary
                .opacity(0.75)
                .cornerRadius(100)
                .frame(width:150, height: 3)
        }
    }
}

#Preview {
    ORWidget()
}
