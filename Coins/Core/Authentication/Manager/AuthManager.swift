//
//  AuthManager.swift
//  Coins
//
//  Created by Support Aximmetry on 13/06/2025.
//

import Foundation

class AuthManager: ObservableObject {
    @Published var userSessionId: String?
    
    private let service: MockAuthService
    
    init(service: MockAuthService) {
        self.service = service
    }
    
    @MainActor
    func login(withEmail email: String, password: String) async throws {
        self.userSessionId = try await service.login(withEmail: email, password: password)
    }
    
    @MainActor
    func createUser(withEmail email: String, password: String, fullname: String) async throws {
        self.userSessionId = try await service.createUser(withEmail: email, password: password, fullname: fullname)
    }
    
    @MainActor
    func logout() {
        service.logout()
        self.userSessionId = nil
    }
}
