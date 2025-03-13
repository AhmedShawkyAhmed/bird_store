//
//  HelpScreen.swift
//  bird
//
//  Created by Ahmed Shawky on 02/03/2025.
//

import SwiftUI

struct HelpScreen: View {
    var body: some View {
        BackgroundView(
            spacing: 0,
            content: {
                Text("Help")
                    .font(.title)
                    .padding(.vertical, 20)
                    .foregroundColor(Color.white)
                
                FAQListView()
            }
        )
    }
}

#Preview {
    HelpScreen()
}
