//
//  CasualGameView.swift
//  Unofficial SF Symbols Game
//
//  Created by Rudrank Riyam on 12/04/20.
//  Copyright © 2020 Rudrank Riyam. All rights reserved.
//

import SwiftUI
import RRComponentsKit

struct CasualGameView: View {
    @EnvironmentObject var viewModel: MainSymbolGameViewModel
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                
                LikeButtonView(score: $viewModel.score)
                    .frame(height: 50)
            }
            .padding([.top, .horizontal])
            
            GamePlayView()
        }
    }
}

struct CasualGameView_Previews: PreviewProvider {
    static var previews: some View {
        CasualGameView()
    }
}
