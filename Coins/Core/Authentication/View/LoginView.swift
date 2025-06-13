//
//  LoginView.swift
//  Coins
//
//  Created by Support Aximmetry on 13/06/2025.
//

import SwiftUI

struct LoginView: View {
    
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                
                VStack {
                    TextField("Enter your email", text: $email)
                        .modifier(TextFieldModifier())
                    
                    SecureField("Enter your password", text: $password)
                        .modifier(TextFieldModifier())
                }
                    
                NavigationLink {
                    
                } label: {
                    Text("Forgot password?")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.top)
                        .padding(.trailing, 28)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                }
                
                Button {
                    print("DEBUG: Log in")
                } label: {
                    Text("Login")
                        .modifier(ButtonModifier())
                }
                .padding(.vertical)
                
                Spacer()
                
                Divider()
                
                NavigationLink {
                    RegistrationView()
                        .navigationBarBackButtonHidden()
                } label: {
                    HStack(spacing: 2) {
                        Text("Don't have an account?")
                        
                        Text("Sign Up")
                            .fontWeight(.semibold)
                    }
                    .font(.footnote)
                }
                .padding(.vertical)
            }
        }
    }
}

#Preview {
    LoginView()
}
