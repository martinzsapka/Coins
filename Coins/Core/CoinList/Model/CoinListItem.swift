//
//  Coin.swift
//  Coins
//
//  Created by Support Aximmetry on 09/06/2025.
//

import Foundation

struct CoinListItem: Codable, Identifiable, Hashable {
    let id: String
    let symbol: String
    let name: String
    let currentPrice: Double
    let marketCapRank: Int
    
    enum CodingKeys: String, CodingKey {
        case id, symbol, name
        case currentPrice = "current_price"
        case marketCapRank = "market_cap_rank"
    }
}
