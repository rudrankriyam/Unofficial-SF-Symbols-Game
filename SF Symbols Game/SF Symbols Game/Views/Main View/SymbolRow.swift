//
//  SymbolRow.swift
//  Unofficial SF Symbols Game
//
//  Created by Rudrank Riyam on 12/04/20.
//  Copyright © 2020 Rudrank Riyam. All rights reserved.
//

import SwiftUI

struct SymbolRow: View {
    @EnvironmentObject var viewModel: MainSymbolGameViewModel
    @Binding var selectedSymbol: Int?
    let symbol: Int
    
    var body: some View {
        Button(action: { selectedSymbol = symbol }) {
            HStack(spacing: 10) {
                Text(viewModel.symbols[symbol])
                    .foregroundColor(symbol == selectedSymbol ? .white : .primary)
                    .kerning(1)
                    .font()
                
                Spacer()
                
                if viewModel.showResult {
                    Image(systemName: viewModel.correctAnswer == symbol ? "checkmark" : "xmark")
                        .foregroundColor(symbol == selectedSymbol ? .white : .primary)
                }
            }
            .customBackground(isSelected: symbol == selectedSymbol)
        }
    }
}

struct SymbolRow_Previews: PreviewProvider {
    static var previews: some View {
        SymbolRow(selectedSymbol: .constant(0), symbol: 0)
    }
}
