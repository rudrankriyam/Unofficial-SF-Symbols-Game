//
//  MainViewGridItem.swift
//  SF Symbols Game
//
//  Created by Rudrank Riyam on 23/05/21.
//  Copyright © 2021 Rudrank Riyam. All rights reserved.
//

import SwiftUI

struct MainViewGridItem: View {
    var image: String
    var mode: String
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            VStack {
                Text(image)
                    .font(style: .largeTitle)
                    .frame(maxWidth: .infinity, alignment: .center)
                    .customBackground()
                
                Text(mode.capitalized)
                    .font()
            }
        }
        .buttonStyle(PlainButtonStyle())
    }
}


struct MainViewGridItem_Previews: PreviewProvider {
    static var previews: some View {
        MainViewGridItem(image: "🕹", mode: "arcade", action: {})
    }
}
