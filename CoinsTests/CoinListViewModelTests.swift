//
//  Untitled.swift
//  Coins
//
//  Created by Support Aximmetry on 11/06/2025.
//

import XCTest
@testable import Coins

final class CoinListViewModelTests: XCTestCase {
    
    func test_Init() {
        // given
        let service = MockCoinDataService()
        let viewModel = CoinListViewModel(service: service)
        
        // then
        XCTAssertNotNil(viewModel, "The view model should not be nil")
    }
    
    func test_SuccessfulCoinsFetch() async {
        // given
        let service = MockCoinDataService()
        let viewModel = CoinListViewModel(service: service)
        
        // when
        await viewModel.fetchCoins()
        
        // then
        XCTAssertTrue(viewModel.coins.count > 0)
        XCTAssertEqual(viewModel.coins.count, 20)
        XCTAssertEqual(viewModel.coins, viewModel.coins.sorted(by: { $0.marketCapRank < $1.marketCapRank }))
    }
    
    func test_FetchCoinWithInvalidJSON() async {
        // given
        let service = MockCoinDataService()
        service.mockCoinListData = mockCoinList_invalidJSON
        let viewModel = CoinListViewModel(service: service)
        
        // when
        await viewModel.fetchCoins()
        
        // then
        XCTAssertTrue(viewModel.coins.isEmpty)
        XCTAssertNotNil(viewModel.errorMessage)
    }
    
    func test_ThrowsInvalidDataError() async {
        // given
        let givenError = CoinAPIError.invalidData
        let service = MockCoinDataService()
        service.mockCoinListData = mockCoinList_invalidJSON
        service.mockError = givenError
        let viewModel = CoinListViewModel(service: service)
        
        // when
        await viewModel.fetchCoins()
        
        // then
        XCTAssertTrue(viewModel.coins.isEmpty)
        XCTAssertNotNil(viewModel.errorMessage)
        XCTAssertEqual(viewModel.errorMessage, givenError.customDescription)
    }
    
    func test_ThrowsStatusCodeError() async {
        // given
        let givenError = CoinAPIError.invalidStatusCode(statusCode: 404)
        let service = MockCoinDataService()
        service.mockCoinListData = mockCoinList_invalidJSON
        service.mockError = givenError
        let viewModel = CoinListViewModel(service: service)
        
        // when
        await viewModel.fetchCoins()
        
        // then
        XCTAssertTrue(viewModel.coins.isEmpty)
        XCTAssertNotNil(viewModel.errorMessage)
        XCTAssertEqual(viewModel.errorMessage, givenError.customDescription)
    }
}
