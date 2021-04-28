//
//  MainSymbolGameViewModel.swift
//  SF Symbols Game
//
//  Created by Rudrank Riyam on 29/03/21.
//  Copyright © 2021 Rudrank Riyam. All rights reserved.
//

import SwiftUI

class MainSymbolGameViewModel: ObservableObject {
    // MARK:- Published Properties
    @Published var symbols = MainSymbolGameViewModel.getSymbolsArray()
    @Published var correctAnswer = Int.random(in: MainSymbolGameViewModel.numberOfOptions)

    @Published var showingScore = false
    @Published var scoreTitle = ""
    @Published var score = 0

    static let numberOfOptions: Range<Int> = 0..<4

    // MARK:- Methods
    func askQuestion() {
        symbols.shuffle()
        correctAnswer = Int.random(in: MainSymbolGameViewModel.numberOfOptions)
    }

    func symbolTapped(_ number: Int) {
        showingScore.toggle()
        // Calling haptic feedback
        haptickFeedback.feedback.haptiFeedback()
        if number == correctAnswer {
            scoreTitle = "Correct"
            score += 1
        } else {
            scoreTitle = "Wrong"
        }
    }

    static func getSymbolsArray() -> [String] {
        var symbols: [String] = []

        for symbol in All.allCases {
            symbols.append(symbol.systemName)
        }

        return symbols.shuffled()
    }
}
