//
//  CoinsViewModel.swift
//  Coins
//
//  Created by Support Aximmetry on 08/06/2025.
//

import Foundation

class CoinListViewModel: ObservableObject {
    @Published var coins = [CoinListItem]()
    @Published var errorMessage: String?
    
    private let service: CoinDataServiceProtocol
    
    init(service: CoinDataServiceProtocol) {
        self.service = service
    }
    
    @MainActor
    func fetchCoins() async {
        do {
            self.coins = try await service.fetchCoins()
            print("DEBUG: Did fetch coins")
        } catch {
            guard let error = error as? CoinAPIError else { return }
            self.errorMessage = error.customDescription
        }
    }
}
