//
//  RegistrationView.swift
//  Coins
//
//  Created by Support Aximmetry on 13/06/2025.
//

import SwiftUI

struct RegistrationView: View {
    
    @State private var email = ""
    @State private var password = ""
    @State private var fullname = ""
    @StateObject var viewModel: RegistrationViewModel
    @Environment(\.dismiss) var dismiss
    
    init(authManager: AuthManager) {
        self._viewModel = StateObject(wrappedValue: RegistrationViewModel(authManager: authManager))
    }
    
    var body: some View {
        VStack {
            Spacer()
            
            VStack {
                TextField("Enter your email", text: $email)
                    .modifier(TextFieldModifier())
                
                SecureField("Enter your password", text: $password)
                    .modifier(TextFieldModifier())
                
                TextField("Enter your full name", text: $fullname)
                    .modifier(TextFieldModifier())
            }
            
            Button {
                Task {
                    await viewModel.createUser(withEmail: email, password: password, fullname: fullname)
                }
            } label: {
                Text("Create account")
                    .modifier(ButtonModifier())
            }
            .padding(.vertical)
            .disabled(!formIsValid)
            .opacity(formIsValid ? 1.0 : 0.7)
            
            Spacer()
            
            Divider()
            
            Button {
                dismiss()
            } label: {
                HStack(spacing: 2) {
                    Text("Already have an account?")
                    
                    Text("Sign In")
                        .fontWeight(.semibold)
                }
                .font(.footnote)
            }
            .padding(.vertical)
        }
    }
}

// MARK: - AuthenticationFormProtocol

extension RegistrationView: AuthenticationFormProtocol {
    var formIsValid: Bool {
        return !email.isEmpty && email.contains("@") && !password.isEmpty && !fullname.isEmpty
    }
}

#Preview {
    RegistrationView(authManager: AuthManager(service: MockAuthService()))
}
