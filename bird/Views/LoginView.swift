//
//  LoginView.swift
//  bird
//
//  Created by Ahmed Shawky on 01/03/2025.
//

import SwiftUI

struct LoginView: View {
    @State private var fullName: String = ""
    @State private var phoneNumber: String = ""
    
    var body: some View {
        ZStack(alignment: .top) {
            Image("background")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity, maxHeight: 350)
                .ignoresSafeArea(.all, edges: .top)
                .offset(y: -100)
            
            Color.white
                .frame(maxWidth: .infinity, maxHeight: 700)
                .cornerRadius(70)
                .offset(y: 190)
            
            ZStack(alignment: .center) {
                Color.white
                    .cornerRadius(50)
                    .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: 8)
                
                VStack(spacing: 15) {
                    Text("Welcome")
                        .font(.title)
                    
                    Color.Primary
                        .opacity(0.75)
                        .cornerRadius(100)
                        .frame(width:150, height: 3)
                    
                    TextField("Enter Your Full Name", text: $fullName)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(10)
                        .shadow(color: Color.black.opacity(0.1), radius: 10, x:0, y: 0)
                        .padding(.horizontal, 30)
                    
                    TextField("Enter Your Phone Number", text: $phoneNumber)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(10)
                        .shadow(color: Color.black.opacity(0.1), radius: 10, x:0, y: 0)
                        .padding(.horizontal, 30)
                    
                    Button(action: {
                        print("Button Clicked")
                    }) {
                        Text("Login")
                            .font(.headline)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity, maxHeight: 50)
                            .background(LinearGradient(
                                gradient: Gradient(
                                    colors: [
                                        Color.Primary,
                                        Color.Primary.opacity(0.80),
                                        Color.Primary.opacity(0.60),
                                        Color.Primary.opacity(0.40)
                                    ]),
                                startPoint: .leading,
                                endPoint: .trailing
                            ))
                            .cornerRadius(100)
                            .shadow(color:Color.black.opacity(0.2),radius: 10)
                    }
                    .padding(.horizontal, 30)
                }
            }
            .frame(maxWidth: .infinity, maxHeight: 300)
            .padding(.horizontal, 25)
            .padding(.top, 80)
                
        }
        .ignoresSafeArea(.all, edges: .bottom)
    }
}

#Preview {
    LoginView()
}
