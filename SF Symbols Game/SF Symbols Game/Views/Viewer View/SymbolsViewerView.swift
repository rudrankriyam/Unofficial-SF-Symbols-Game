//
//  SymbolsViewerView.swift
//  SF Symbols Game
//
//  Created by Rudrank Riyam on 29/03/21.
//  Copyright © 2021 Rudrank Riyam. All rights reserved.
//

import SwiftUI

struct SymbolsViewerView: View {
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Viewer")
                    .largeTitleText()
                    .padding(.horizontal)

                ScrollView(.vertical, showsIndicators: false) {
                    LazyVStack(spacing: 10) {
                        ForEach(SymbolCategories.allCases, id: \.self) { symbol in
                            Label(symbol.name, systemImage: symbol.image).font()
                                .customBackground()
                        }
                    }
                }
            }
            .navigationBarHidden(true)
            .background(Color.black)
        }
    }
}

struct SymbolsViewerView_Previews: PreviewProvider {
    static var previews: some View {
        SymbolsViewerView()
    }
}

