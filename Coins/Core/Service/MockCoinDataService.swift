//
//  MockCoinDataService.swift
//  Coins
//
//  Created by Support Aximmetry on 10/06/2025.
//

class MockCoinDataService: CoinDataServiceProtocol {
    func fetchCoins() async throws -> [Coin] {
        let bitcoin = Coin(id: "bitcoin", symbol: "btc", name: "Bitcoin", currentPrice: 110000, marketCapRank: 1)
        return [bitcoin]
    }
    
    func fetchCoinDetails(id: String) async throws -> CoinDetails? {
        let bitcoinDetails = CoinDetails(id: "bitcoin", symbol: "btc", name: "Bitcoin", description: Description(text: "Test description"))
        return bitcoinDetails
    }
}
