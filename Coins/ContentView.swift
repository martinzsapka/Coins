//
//  ContentView.swift
//  Coins
//
//  Created by Support Aximmetry on 08/06/2025.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = CoinsViewModel()
    
    var body: some View {
        VStack {
            if let errorMessage = viewModel.errorMessage {
                Text(errorMessage)
            } else {
                Text("\(viewModel.coin): \(viewModel.price)")
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
