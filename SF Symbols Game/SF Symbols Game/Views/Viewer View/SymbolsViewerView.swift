//
//  SymbolsViewerView.swift
//  SF Symbols Game
//
//  Created by Rudrank Riyam on 29/03/21.
//  Copyright © 2021 Rudrank Riyam. All rights reserved.
//

import SwiftUI
import RRComponentsKit

struct SymbolsViewerView: View {
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Viewer").largeTitleText()
                
                ScrollView(.vertical, showsIndicators: false) {
                    LazyVStack {
                        ForEach(SymbolCategories.allCases, id: \.self) { symbol in
                            NavigationLink(destination: SymbolCategoryView(category: symbol)) {
                                SymbolLabelView(image: symbol.image, name: symbol.name)
                            }
                        }
                    }
                }
            }
            .padding(.horizontal)
            .navigationBarHidden(true)
        }
    }
}

struct SymbolsViewerView_Previews: PreviewProvider {
    static var previews: some View {
        SymbolsViewerView()
    }
}
