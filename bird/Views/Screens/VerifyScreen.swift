//
//  VerifyScreen.swift
//  bird
//
//  Created by Ahmed Shawky on 02/03/2025.
//

import SwiftUI

struct VerifyScreen: View {
    var body: some View {
        BackgroundView(
            content: {
                Text("Verify Phone")
                    .font(.title)
                    .padding(.top, 20)
                    .padding(.bottom, 60)
                    .foregroundColor(Color.white)
                
                OTPTextField(digitCount: 4)
                
                Button(action: {
                    print("Resend OTP")
                }) {
                    Text("Resend OTP")
                        .font(.system(size: 18))
                        .foregroundColor(Color.PrimaryDark)
                }
                
                MainButton(text: "Verify", action: {
                    print("Verify")
                })
            }
        )
    }
}

#Preview {
    VerifyScreen()
}
