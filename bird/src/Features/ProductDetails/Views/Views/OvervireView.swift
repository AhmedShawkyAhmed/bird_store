//
//  OvervireView.swift
//  bird
//
//  Created by Ahmed Shawky on 14/03/2025.
//

import SwiftUI

struct OvervireView: View {
    var overviewText: String
    var body: some View {
        Text(overviewText)
            .foregroundColor(.gray)
            .frame(width: .infinity ,alignment: .leading)
            .padding(.horizontal, 15)
    }
}

#Preview {
    OvervireView(overviewText: "Hello World")
}
