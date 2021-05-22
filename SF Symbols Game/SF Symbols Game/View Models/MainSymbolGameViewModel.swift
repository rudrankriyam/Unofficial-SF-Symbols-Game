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
    @Published var isEvaluated = false
    
    static let numberOfOptions: Range<Int> = 0..<4
    
    // MARK:- Methods
    func askQuestion() {
        symbols.shuffle()
        correctAnswer = Int.random(in: MainSymbolGameViewModel.numberOfOptions)
        
        isEvaluated.toggle()
    }
    
    func symbolTapped(_ number: Int) {
        // Calling haptic feedback
        FeedbackManager.success()
        
        if number == correctAnswer {
            score += 1
        }
        
        isEvaluated.toggle()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.askQuestion()
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
