//
//  VerifyScreen.swift
//  bird
//
//  Created by Ahmed Shawky on 02/03/2025.
//

import SwiftUI

struct VerifyScreen: View {
    var body: some View {
        VStack(alignment: .center, spacing: 60) {
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
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .background(LinearGradient(
            gradient: Gradient(
                colors: [
                    Color.Primary.opacity(0.8),
                    Color.Primary.opacity(0.4),
                    Color.white,
                    Color.white,
                    Color.white
                ]),
            startPoint: .top,
            endPoint: .bottom
        ))
    }
}

#Preview {
    VerifyScreen()
}
