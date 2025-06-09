//
//  CoinsViewModel.swift
//  Coins
//
//  Created by Support Aximmetry on 08/06/2025.
//

import Foundation

class CoinsViewModel: ObservableObject {
    @Published var coin = ""
    @Published var price = ""
    @Published var errorMessage: String?
    
    private let service = CoinDataService()
    
    init() {
        fetchPrice(coin: "bitcoin")
    }
    
    func fetchPrice(coin: String) {
        service.fetchPrice(coin: coin) { priceFromService in
            print("DEBUG: Price from serivce is \(priceFromService)")
            DispatchQueue.main.async {
                self.price = "$\(priceFromService)"
                self.coin = coin
            }
        }
    }
}
