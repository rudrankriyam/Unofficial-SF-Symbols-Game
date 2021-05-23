//
//  SymbolCategoryView.swift
//  SF Symbols Game
//
//  Created by Rudrank Riyam on 30/03/21.
//  Copyright © 2021 Rudrank Riyam. All rights reserved.
//

import SwiftUI

struct SymbolCategoryView: View {
    var category: SymbolCategories
    
    var body: some View {
        VStack {
            Text(category.name).largeTitleText()
            
            ScrollView(.vertical, showsIndicators: false) {
                LazyVStack {
                    ForEach(category.symbols, id: \.self) { symbol in
                        SymbolLabelView(image: symbol, name: symbol)
                    }
                }
            }
        }
        .padding(.horizontal)
        .navigationBarTitleDisplayMode(.inline)
    }
}
