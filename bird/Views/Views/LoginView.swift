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
    var onTap: () -> Void
    
    var body: some View {
        ZStack(alignment: .center) {
            Color.white
                .cornerRadius(40)
                .shadow(
                    color: Color.shadowColor.opacity(0.2),
                    radius: 10, x: 0, y: 8)
            
            VStack(spacing: 15) {
                Text("Welcome")
                    .font(.title)
                
                Color.Primary
                    .opacity(0.75)
                    .cornerRadius(100)
                    .frame(width:150, height: 3)
                
                MainTextField(hint: "Enter Your Full Name")
                MainTextField(hint: "Enter Your Phone Number")
                
                MainButton(text: "Login", action: {
                    print("Login Clecked")
                    onTap()
                })
            }
            .padding(.horizontal, 10)
        }
        .frame(maxWidth: .infinity, maxHeight: 300)
        .padding(.horizontal, 25)
        .padding(.top, 80)
    }
}

#Preview {
    LoginView(onTap: {})
}
