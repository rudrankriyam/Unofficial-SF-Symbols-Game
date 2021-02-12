//
//  MainSymbolGameView.swift
//  Unofficial SF Symbols Game
//
//  Created by Rudrank Riyam on 12/04/20.
//  Copyright © 2020 Rudrank Riyam. All rights reserved.
//

import SwiftUI

var numberOfOptions: Range<Int> = 0..<4

class MainSymbolGameViewModel: ObservableObject {
    //propertyForFeedback
    @State private var response = UINotificationFeedbackGenerator()
    // MARK:- Published Properties
    @Published var symbols = Symbols.symbols.shuffled()
    @Published var correctAnswer = Int.random(in: numberOfOptions)
    
    @Published var showingScore = false
    @Published var scoreTitle = ""
    @Published var score = 0
    
    // MARK:- Methods
    func askQuestion() {
        symbols.shuffle()
        correctAnswer = Int.random(in: numberOfOptions)
        //prepare the tapticEngine
        self.response.prepare()
    }
    
    func symbolTapped(_ number: Int) {
        showingScore.toggle()
        // Calling haptic feedback
//        haptickFeedback.feedback.haptiFeedback()
        if number == correctAnswer {
            
            scoreTitle = "Correct"
            score += 1
        } else {
            scoreTitle = "Wrong"
            //call haptic response on error 
            self.response.notificationOccurred(.error)
        }
    }
}

struct MainSymbolGameView: View {
    @ObservedObject var viewModel: MainSymbolGameViewModel
    var body: some View {
        VStack {
            Text("SF Symbols Game").largeTitleText(topPadding: 50)
            Spacer()
            Image(systemName: viewModel.symbols[viewModel.correctAnswer]).customImage()
            Spacer()
            
            ForEach(numberOfOptions, id: \.self) { symbol in
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
        MainSymbolGameView(viewModel: MainSymbolGameViewModel())
    }
}
