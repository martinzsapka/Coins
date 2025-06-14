//
//  CoinDetailsView.swift
//  Coins
//
//  Created by Support Aximmetry on 09/06/2025.
//

import SwiftUI

struct CoinDetailsView: View {
    let coin: CoinListItem
    @ObservedObject var viewModel: CoinDetailsViewModel
    
    init(coin: CoinListItem, service: CoinDataServiceProtocol) {
        self.coin = coin
        self.viewModel = CoinDetailsViewModel(coinId: coin.id, service: service)
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            if let details = viewModel.coinDetails {
                Text(details.name)
                    .fontWeight(.semibold)
                    .font(.subheadline)
                
                Text(details.id.uppercased())
                    .font(.footnote)
                
                Text(details.description.text)
                    .font(.footnote)
                    .padding(.vertical)
            }
        }
        .task {
            await viewModel.fetchCoinDetails()
        }
        .padding()
    }
}

//#Preview {
//    CoinDetailsView()
//}
