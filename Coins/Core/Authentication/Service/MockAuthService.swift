//
//  MockAuthService.swift
//  Coins
//
//  Created by Support Aximmetry on 13/06/2025.
//

import Foundation

struct MockAuthService {
    func login(withEmail email: String, password: String) async throws -> String? {
        return NSUUID().uuidString
    }
    
    func createUser(withEmail email: String, password: String, fullname: String) async throws -> String? {
        return NSUUID().uuidString
    }
    
    func logout(){
        
    }
}
