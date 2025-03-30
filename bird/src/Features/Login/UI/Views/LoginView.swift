//
//  LoginView.swift
//  bird
//
//  Created by Ahmed Shawky on 02/03/2025.
//

import SwiftUI

struct LoginView: View {
    @State private var fullName: String = ""
    @State private var phoneNumber: String = ""
    @State private var isLogin = false
    var onTap: () -> Void
    
    var body: some View {
        ZStack(alignment: .center) {
            Color.white
                .cornerRadius(40)
                .shadow(
                    color: Color.shadowColor.opacity(0.2),
                    radius: 10, x: 0, y: 8)
            
            VStack(spacing: 15) {
                HStack(spacing: 40) {
                    VStack(spacing: 5){
                        Text("Login")
                            .font(.title3)
                        
                        Color(isLogin ? Color.Primary : Color.white)
                            .opacity(0.75)
                            .cornerRadius(100)
                            .frame(width:100, height: 3)
                    }
                    .onTapGesture {
                        isLogin = true
                    }
                    
                    VStack(spacing: 5){
                        Text("Register")
                            .font(.title3)
                        
                        Color(!isLogin ? Color.Primary : Color.white)
                            .opacity(0.75)
                            .cornerRadius(100)
                            .frame(width:100, height: 3)
                    }
                    .onTapGesture {
                        isLogin = false
                    }
                }
                
                if !isLogin {
                    MainTextField(hint: "Enter Your Full Name", text: $fullName)
                }
                MainTextField(hint: "Enter Your Phone Number", text: $phoneNumber)
                
                MainButton(
                    text: "Continue",
                    action: {
                        print("Login Clecked")
                        onTap()
                    }
                )
            }
            .padding(.horizontal, 10)
        }
        .frame(maxWidth: .infinity, maxHeight: isLogin ? 235 : 300)
        .padding(.horizontal, 25)
        .padding(.top, 80)
    }
}

#Preview {
    LoginView(onTap: {})
}
