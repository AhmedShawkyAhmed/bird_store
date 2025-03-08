//
//  MainTextField.swift
//  bird
//
//  Created by Ahmed Shawky on 02/03/2025.
//

import SwiftUI

struct MainTextField: View {
    var hint: String
    var horizontalPadding: CGFloat = 30.0
    var height: CGFloat = 50
    var prefixIcon: String? = nil
    var suffixIcon: String? = nil
    var onPrefixTap: (() -> Void)? = nil
    var onSuffixTap: (() -> Void)? = nil

    @State private var text: String = ""

    var body: some View {
        HStack {
            if let prefixIcon = prefixIcon {
                Button(action: {
                    onPrefixTap?()
                }) {
                    Image(systemName: prefixIcon)
                        .foregroundColor(.gray)
                        .padding(.leading, 10)
                }
            }

            TextField(hint, text: $text)
                .padding()
                .frame(height: height)
                .background(Color.white)

            if let suffixIcon = suffixIcon {
                Button(action: {
                    onSuffixTap?()
                }) {
                    Image(systemName: suffixIcon)
                        .foregroundColor(.gray)
                        .padding(.trailing, 10)
                }
            }
        }
        .background(Color.white)
        .cornerRadius(10)
        .shadow(color: Color.black.opacity(0.2), radius: 4, x: 0, y: 4)
        .padding(.horizontal, horizontalPadding)
    }
}

#Preview {
    MainTextField(hint: "Enter Text")
}
