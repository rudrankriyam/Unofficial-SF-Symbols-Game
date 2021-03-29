//
//  SymbolRow.swift
//  Unofficial SF Symbols Game
//
//  Created by Rudrank Riyam on 12/04/20.
//  Copyright © 2020 Rudrank Riyam. All rights reserved.
//

import SwiftUI

struct SymbolRow: View {
    @Binding var selectedOption: String?
    let symbolName: String

    var body: some View {
        Button(action: { selectedOption = symbolName }) {
            HStack(spacing: 10) {
                Text(symbolName)
                    .foregroundColor(symbolName == selectedOption ? .white : .primary)
                    .kerning(1)
                    .font()
            }
            .customBackground(isSelected: symbolName == selectedOption)
        }
    }
}

struct SymbolRow_Previews: PreviewProvider {
    static var previews: some View {
        SymbolRow(selectedOption: .constant(""), symbolName: "gear")
    }
}
