//
//  MockCoinDataService.swift
//  Coins
//
//  Created by Support Aximmetry on 10/06/2025.
//

import Foundation

class MockCoinDataService: CoinDataServiceProtocol {
    var mockCoinListData: Data?
    var mockError: CoinAPIError?
    
    func fetchCoins() async throws -> [CoinListItem] {
        if let mockError { throw mockError }
        
        do {
            let coins = try JSONDecoder().decode([CoinListItem].self, from: mockCoinListData ?? mockCoinList_marketCapDesc)
            return coins
        } catch {
            throw error as? CoinAPIError ?? .unknownError(error: error)
        }
    }
    
    func fetchCoinDetails(id: String) async throws -> CoinDetails? {
        let bitcoinDetails = CoinDetails(id: "bitcoin", symbol: "btc", name: "Bitcoin", description: Description(text: "Test description"))
        return bitcoinDetails
    }
}
