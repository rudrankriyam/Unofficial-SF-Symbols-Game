//
//  GamePlayView.swift
//  SF Symbols Game
//
//  Created by Rudrank Riyam on 23/05/21.
//  Copyright © 2021 Rudrank Riyam. All rights reserved.
//

import SwiftUI

struct GamePlayView: View {
    @EnvironmentObject var viewModel: MainSymbolGameViewModel
    
    var body: some View {
        VStack {
            Text("What is the name of this symbol?")
                .font(weight: .bold, style: .title1)
                .frame(maxWidth: .infinity, alignment: .center)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            
            Spacer()
            
            Image(systemName: viewModel.symbols[viewModel.correctAnswer])
                .customImage()
            
            Spacer()
            
            ForEach(MainSymbolGameViewModel.numberOfOptions, id: \.self) { symbol in
                SymbolRow(selectedSymbol: $viewModel.selectedSymbol, symbol: symbol)
                    .foregroundColor(.primary)
            }
            
            GradientButton(title: viewModel.showResult ? "Next" : "Evaluate") {
                viewModel.evaluate()
            }
        }
        .padding([.horizontal, .bottom])
    }
}


struct GamePlayView_Previews: PreviewProvider {
    static var previews: some View {
        GamePlayView()
    }
}
