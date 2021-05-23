//
//  SymbolLabelView.swift
//  SF Symbols Game
//
//  Created by Rudrank Riyam on 23/05/21.
//  Copyright © 2021 Rudrank Riyam. All rights reserved.
//

import SwiftUI

struct SymbolLabelView: View {
    var image: String
    var name: String
    
    var body: some View {
        HStack {
            Image(systemName: image)
                .font(.system(size: 30))
                .frame(minWidth: 50)
            
            Text(name).font()
        }
        .customBackground()
    }
}

struct SymbolLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SymbolLabelView(image: "heart", name: "heart")
    }
}
