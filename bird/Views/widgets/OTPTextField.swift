//
//  OTPTextField.swift
//  bird
//
//  Created by Ahmed Shawky on 02/03/2025.
//

import SwiftUI

struct OTPTextField: View {
    var digitCount: Int = 6
    @State private var otpText: [String]
    @FocusState private var focusedIndex: Int?
    
    init(digitCount: Int = 6) {
        self.digitCount = digitCount
        _otpText = State(initialValue: Array(repeating: "", count: digitCount))
    }
    
    var body: some View {
        HStack(spacing: 10) {
            ForEach(0..<digitCount, id: \.self) { index in
                TextField("", text: $otpText[index])
                    .frame(width: 60, height: 60)
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(color: Color.black.opacity(0.1), radius: 10)
                    .multilineTextAlignment(.center)
                    .keyboardType(.numberPad)
                    .focused($focusedIndex, equals: index)
                    .onChange(of: otpText[index]) { oldValue, newValue in
                        handleInput(newValue, at: index)
                    }
            }
        }
    }
    
    private func handleInput(_ newValue: String, at index: Int) {
        otpText[index] = String(newValue.prefix(1))
        
        if !newValue.isEmpty && index < digitCount - 1 {
            focusedIndex = index + 1
        }
        
        if newValue.isEmpty && index > 0 {
            focusedIndex = index - 1
        }
    }
}

#Preview {
    OTPTextField()
}
