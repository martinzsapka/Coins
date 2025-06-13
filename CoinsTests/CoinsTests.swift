//
//  CoinsTests.swift
//  CoinsTests
//
//  Created by Support Aximmetry on 11/06/2025.
//

import XCTest
@testable import Coins

final class CoinsTests: XCTestCase {

    func test_DecodeCoinsIntoArray() throws {
        do {
            let coins = try JSONDecoder().decode([CoinListItem].self, from: mockCoinList_marketCapDesc)
            XCTAssertEqual(coins.count, 20)
            XCTAssertEqual(coins, coins.sorted(by: { $0.marketCapRank < $1.marketCapRank }))
        } catch {
            XCTFail(error.localizedDescription)
        }
    }
}
