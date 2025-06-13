//
//  ButtonModifier.swift
//  Coins
//
//  Created by Support Aximmetry on 13/06/2025.
//

import SwiftUI

struct ButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .fontWeight(.semibold)
            .foregroundStyle(.white)
            .frame(width: 350, height: 44)
            .background(.black)
            .clipShape(RoundedRectangle(cornerRadius: 8))
    }
}
