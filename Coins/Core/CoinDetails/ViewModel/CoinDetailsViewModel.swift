//
//  CoinDetailsViewModel.swift
//  Coins
//
//  Created by Support Aximmetry on 09/06/2025.
//

import Foundation

class CoinDetailsViewModel: ObservableObject {
    
    private let service: CoinDataServiceProtocol
    private let coinId: String
    
    @Published var coinDetails: CoinDetails?
    
    init(coinId: String, service: CoinDataServiceProtocol) {
        self.coinId = coinId
        self.service = service
    }
    
    @MainActor
    func fetchCoinDetails() async {
        do {
            self.coinDetails = try await service.fetchCoinDetails(id: coinId)
        } catch {
            print("DEBUG: Error \(error.localizedDescription)")
        }
    }
}
