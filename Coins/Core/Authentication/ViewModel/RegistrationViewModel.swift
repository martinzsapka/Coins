//
//  Untitled.swift
//  Coins
//
//  Created by Support Aximmetry on 13/06/2025.
//

import Foundation

class RegistrationViewModel: ObservableObject {
    private let authManager: AuthManager
    
    init(authManager: AuthManager) {
        self.authManager = authManager
    }
    
    func createUser(withEmail email: String, password: String, fullname: String) async {
        do {
            try await authManager.createUser(withEmail: email, password: password, fullname: fullname)
        } catch {
            print("DEBUG: Failed to create user with error: \(error.localizedDescription)")
        }
    }
}
