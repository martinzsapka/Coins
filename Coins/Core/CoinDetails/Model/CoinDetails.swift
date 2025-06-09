//
//  Coin.swift
//  Coins
//
//  Created by Support Aximmetry on 09/06/2025.
//

import Foundation

struct CoinDetails: Decodable {
    let id: String
    let symbol: String
    let name: String
    let description: Description
}

struct Description: Decodable {
    let text: String
    
    enum CodingKeys: String, CodingKey {
        case text = "en"
    }
}
