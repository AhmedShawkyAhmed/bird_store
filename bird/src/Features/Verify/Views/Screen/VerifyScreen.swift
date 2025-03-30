//
//  VerifyScreen.swift
//  bird
//
//  Created by Ahmed Shawky on 02/03/2025.
//

import SwiftUI
import AlertToast

struct VerifyScreen: View {
    @State private var navigateToLayout = false
    @State private var showToast = false
    
    @State private var pinOne = ""
    @State private var pinTwo = ""
    @State private var pinThree = ""
    @State private var pinFour = ""
    @State private var pinFive = ""
    @State private var pinSix = ""
    
    var body: some View {
        NavigationStack {
            BackgroundView(
                content: {
                    Text("Verify Phone")
                        .font(.title)
                        .padding(.top, 20)
                        .padding(.bottom, 60)
                        .foregroundColor(Color.white)
                    
                    OTPTextField(
                        pinOne: $pinOne,
                        pinTwo: $pinTwo,
                        pinThree: $pinThree,
                        pinFour: $pinFour,
                        pinFive: $pinFive,
                        pinSix: $pinSix
                    )
                    
                    Button(action: {
                        print("Resend OTP")
                    }) {
                        Text("Resend OTP")
                            .font(.system(size: 18))
                            .foregroundColor(Color.PrimaryDark)
                    }
                    
                    MainButton(
                        text: "Verify",
                        action: {
                            let otpCode = pinOne + pinTwo + pinThree + pinFour + pinFive + pinSix
                            if(otpCode == "123456") {
                                print("Entered OTP: \(otpCode)")
                                showToast = false
                                navigateToLayout = true
                            }else {
                                showToast = true
                            }
                        }
                    )
                    .navigationDestination(isPresented: $navigateToLayout) {
                        LayoutScreen()
                    }
                }
            )
        }
        .toast(isPresenting: $showToast) {
            AlertToast(displayMode: .alert, type: .error(.red), title: "Wrong OTP")
        }
        .navigationBarHidden(true)
    }
}

#Preview {
    VerifyScreen()
}
