//
//  ContentView.swift
//  Coins
//
//  Created by Support Aximmetry on 08/06/2025.
//

import SwiftUI

struct ContentView: View {
    private let service: CoinDataServiceProtocol
    @StateObject var viewModel: CoinListViewModel
    
    init(service: CoinDataServiceProtocol) {
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
            .navigationDestination(for: CoinListItem.self, destination: { coin in
                CoinDetailsView(coin: coin, service: service)
            })
            .overlay {
                if let error = viewModel.errorMessage {
                    Text(error)
                }
            }
        }
    }
}

#Preview {
    ContentView(service: MockCoinDataService())
}
