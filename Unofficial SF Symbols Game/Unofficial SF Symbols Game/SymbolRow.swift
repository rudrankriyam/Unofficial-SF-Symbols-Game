//
//  SymbolRow.swift
//  Unofficial SF Symbols Game
//
//  Created by Rudrank Riyam on 12/04/20.
//  Copyright © 2020 Rudrank Riyam. All rights reserved.
//

import SwiftUI

struct SymbolRow: View {
    var symbolName: String

    var body: some View {
        HStack(spacing: 10) {
            Image(systemName: symbolName)
                .font(.title)
                .frame(minWidth: 40, alignment: .leading)
            Text(symbolName)
                .kerning(1)
        }
    .padding()
    }
}

struct SymbolRow_Previews: PreviewProvider {
    static var previews: some View {
        SymbolRow(symbolName: "gear")
    }
}
