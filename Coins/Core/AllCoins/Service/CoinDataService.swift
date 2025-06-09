//
//  CoinDataService.swift
//  Coins
//
//  Created by Support Aximmetry on 09/06/2025.
//

import Foundation

class CoinDataService: HTTPDataService {
    
    private var baseURLComponents: URLComponents {
        var components = URLComponents()
        components.scheme = "https"
        components.host = "api.coingecko.com"
        components.path = "/api/v3/coins/"
        return components
    }
    
    private var fetchCoinsURLString: String? {
        var components = baseURLComponents
        components.path += "markets"
        components.queryItems = [
            .init(name: "vs_currency", value: "usd"),
            .init(name: "order", value: "market_cap_desc"),
            .init(name: "per_page", value: "20"),
            .init(name: "page", value: "1"),
            .init(name: "price_change_percentage", value: "24h")
        ]
        
        return components.url?.absoluteString
    }
    
    private func fetchCoinDetailsURLString(id: String) -> String? {
        var components = baseURLComponents
        components.path += "\(id)"
        components.queryItems = [
            .init(name: "localization", value: "false")        ]
        
        return components.url?.absoluteString
    }
    
    func fetchCoins() async throws -> [Coin] {
        guard let endpoint = fetchCoinsURLString else {
            throw CoinAPIError.requestFailed(description: "Invalid endpoint")
        }
        
        let coins: [Coin] = try await fetchData(endpoint: endpoint)
        return coins
    }
    
    func fetchCoinDetails(id: String) async throws -> CoinDetails? {
        guard let endpoint = fetchCoinDetailsURLString(id: id) else {
            throw CoinAPIError.requestFailed(description: "Invalid endpoint")
        }
        
        let details: CoinDetails = try await fetchData(endpoint: endpoint)
        return details
    }
}
