//
//  CoinsViewModel.swift
//  Coins
//
//  Created by Support Aximmetry on 08/06/2025.
//

import Foundation

class CoinsViewModel: ObservableObject {
    @Published var coins = [Coin]()
    @Published var errorMessage: String?
    
    private let service: CoinDataService
    
    init(service: CoinDataService) {
        self.service = service
        
        Task {
            await fetchCoins()
        }
    }
    
    @MainActor
    func fetchCoins() async {
        do {
            self.coins = try await service.fetchCoins()
        } catch {
            guard let error = error as? CoinAPIError else { return }
            self.errorMessage = error.customDescription
        }
    }
}
