//
//  MainTextField.swift
//  bird
//
//  Created by Ahmed Shawky on 02/03/2025.
//

import SwiftUI

struct MainTextField: View {
    var hint: String
    var horizontalPadding = 30.0
    @State private var text: String = ""
    
    var body: some View {
        TextField(hint, text: $text)
            .padding()
            .background(Color.white)
            .cornerRadius(10)
            .shadow(color: Color.black.opacity(0.1), radius: 10, x:0, y: 0)
            .padding(.horizontal, horizontalPadding)
    }
}

#Preview {
    MainTextField(hint: "Enter Text")
}
