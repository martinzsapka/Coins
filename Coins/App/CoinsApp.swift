//
//  CoinsApp.swift
//  Coins
//
//  Created by Support Aximmetry on 08/06/2025.
//

import SwiftUI

@main
struct CoinsApp: App {
    let authManager = AuthManager(service: MockAuthService())
    let service = MockCoinDataService()
    
    var body: some Scene {
        WindowGroup {
            ContentView(
                authManager: authManager,
                service: service
            )
        }
    }
}
