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

    var body: some View {
        VStack {
            Text("SF Symbols Game")
                .largeTitleText()

            Spacer()

            Image(systemName: viewModel.symbols[viewModel.correctAnswer])
                .customImage()

            Spacer()
            
            ForEach(MainSymbolGameViewModel.numberOfOptions, id: \.self) { symbol in
                Button(action: {
                    viewModel.symbolTapped(symbol)
                }) {
                    SymbolRow(symbolName: viewModel.symbols[symbol])
                        .foregroundColor(.primary)
                }
                .alert(isPresented: $viewModel.showingScore) {
                    Alert(title: Text(viewModel.scoreTitle), message: Text("Your score is \(viewModel.score)"), dismissButton: .default(Text("Continue")) {
                        viewModel.askQuestion()
                    })
                }
            }
        }
    }
}

struct MainSymbolGameView_Previews: PreviewProvider {
    static var previews: some View {
        MainSymbolGameView()
    }
}
