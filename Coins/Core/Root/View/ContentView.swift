//
//  ContentView.swift
//  Coins
//
//  Created by Support Aximmetry on 08/06/2025.
//

import SwiftUI

struct ContentView: View {
    private let service: CoinDataServiceProtocol
    
    init(service: CoinDataServiceProtocol) {
        self.service = service
    }
    
    var body: some View {
        CoinListView(service: service)
    }
}

#Preview {
    ContentView(service: MockCoinDataService())
}
