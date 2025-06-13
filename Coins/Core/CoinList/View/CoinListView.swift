//
//  CoinListView.swift
//  Coins
//
//  Created by Support Aximmetry on 10/06/2025.
//

import SwiftUI

struct CoinListView: View {
    private let authManager: AuthManager
    private let service: CoinDataServiceProtocol
    @StateObject var viewModel: CoinListViewModel
    
    init(authManager: AuthManager, service: CoinDataServiceProtocol) {
        self.authManager = authManager
        self.service = service
        self._viewModel = StateObject(wrappedValue: CoinListViewModel(service: service))
    }
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(viewModel.coins) { coin in
                    NavigationLink(value: coin) {
                        HStack(spacing: 12) {
                            Text("\(coin.marketCapRank)")
                                .foregroundStyle(.gray)
                            
                            VStack(alignment: .leading, spacing: 4) {
                                Text(coin.name)
                                    .fontWeight(.semibold)
                                
                                Text(coin.symbol.uppercased())
                            }
                        }
                        .font(.footnote)
                    }
                }
            }
            .task {
                await viewModel.fetchCoins()
            }
            .navigationDestination(for: CoinListItem.self, destination: { coin in
                CoinDetailsView(coin: coin, service: service)
            })
            .overlay {
                if let error = viewModel.errorMessage {
                    Text(error)
                }
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        self.authManager.logout()
                    }) {
                        Text("Logout")
                    }
                }
            }
        }
    }
}

#Preview {
    CoinListView(
        authManager: AuthManager(service: MockAuthService()),
        service: MockCoinDataService()
    )
}
