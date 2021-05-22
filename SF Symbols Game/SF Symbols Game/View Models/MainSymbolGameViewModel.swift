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
    
    @Published var score = 0
    @Published var showResult = false
    @Published var selectedSymbol: Int? = nil

    static let numberOfOptions: Range<Int> = 0..<4
    
    // MARK:- Methods
    public func evaluate() {
        guard let selectedSymbol = selectedSymbol else { return }
        
        showResult.toggle()
        
        if showResult {
            symbolTapped(selectedSymbol)
        } else {
            self.selectedSymbol = nil
            askQuestion()
        }
    }
    
    private func askQuestion() {
        symbols.shuffle()
        correctAnswer = Int.random(in: MainSymbolGameViewModel.numberOfOptions)
    }
    
    private func symbolTapped(_ number: Int) {
        FeedbackManager.success()
        
        if number == correctAnswer {
            score += 1
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
