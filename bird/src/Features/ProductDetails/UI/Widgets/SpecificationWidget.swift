//
//  SpecificationWidget.swift
//  bird
//
//  Created by Ahmed Shawky on 22/03/2025.
//

import SwiftUI

struct SpecificationWidget: View {
    var title: String
    var content: String
    
    var body: some View {
        HStack(alignment: .center) {
            Text("\(title):")
                .bold()
                .font(.system(size: 18))
            Text(content)
                .font(.system(size: 16))
                .foregroundColor(.black.opacity(0.7))
            Spacer()
        }
    }
}

#Preview {
    SpecificationWidget(title: "Processor", content: "Apple M4")
}
