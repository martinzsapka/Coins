//
//  ContentView.swift
//  Coins
//
//  Created by Support Aximmetry on 08/06/2025.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var authManager: AuthManager
    private let service: CoinDataServiceProtocol
    
    init(authManager: AuthManager, service: CoinDataServiceProtocol) {
        self.service = service
        self.authManager = authManager
    }
    
    var body: some View {
        Group {
            if authManager.userSessionId == nil {
                LoginView(authManager: authManager)
            } else {
                CoinListView(authManager: authManager, service: service)
            }
        }
    }
}

#Preview {
    ContentView(authManager: AuthManager(service: MockAuthService()), service: MockCoinDataService())
}
