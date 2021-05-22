//
//  MainSymbolGameView.swift
//  Unofficial SF Symbols Game
//
//  Created by Rudrank Riyam on 12/04/20.
//  Copyright © 2020 Rudrank Riyam. All rights reserved.
//

import SwiftUI
import RRComponentsKit

struct MainSymbolGameView: View {
    @EnvironmentObject var viewModel: MainSymbolGameViewModel
    @State private var activeSheet: MainViewActiveSheet?
    @State private var selectedSymbol: Int? = nil
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                LikeButtonView(score: $viewModel.score)
                    .frame(height: 50)
            }
            .padding([.top, .horizontal])
            
            Text("What is the name of this symbol?")
                .font(weight: .bold, style: .title1)
                .frame(maxWidth: .infinity, alignment: .center)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            
            Spacer()
            Image(systemName: viewModel.symbols[viewModel.correctAnswer]).customImage()
            Spacer()
            
            ForEach(MainSymbolGameViewModel.numberOfOptions, id: \.self) { symbol in
                SymbolRow(selectedSymbol: $selectedSymbol, symbol: symbol)
                    .foregroundColor(.primary)
            }
            
            GradientButton(title: "Evaluate") {
                if let selectedSymbol = selectedSymbol {
                    viewModel.symbolTapped(selectedSymbol)
                    
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                        self.selectedSymbol = nil
                    }
                }
            }
            .padding([.horizontal, .bottom])
        }
    }
}

struct MainSymbolGameView_Previews: PreviewProvider {
    static var previews: some View {
        MainSymbolGameView()
    }
}

