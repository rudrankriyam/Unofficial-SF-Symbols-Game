//
//  ContentView.swift
//  Unofficial SF Symbols Game
//
//  Created by Rudrank Riyam on 12/04/20.
//  Copyright © 2020 Rudrank Riyam. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    private static let questionsRange = 0..<4

    @State private var symbols = Symbols.symbols.shuffled()
    @State private var correctAnswer = Int.random(in: Self.questionsRange)

    @State private var showingScore = false
    @State private var scoreTitle = ""
    @State private var score = 0

    init() {
        UITableView.appearance().separatorColor = .clear
    }

    var body: some View {
        NavigationView {
                VStack {
                    Text("SF Symbols Game")
                        .largeTitleText(topPadding: 50)
                    ScrollView {
                        Image(systemName: symbols[correctAnswer])
                            .customImage()
                        ForEach(Self.questionsRange, id: \.self) { symbol in
                            Button(action: {
                                self.symbolTapped(symbol)
                            }) {
                                SymbolRow(symbolName: self.symbols[symbol])
                                    .foregroundColor(.primary)
                            }
                            .alert(isPresented: self.$showingScore) {
                                Alert(title: Text(self.scoreTitle), message: Text("Your score is \(self.score)"), dismissButton: .default(Text("Continue")) {
                                    self.askQuestion()
                                    })
                            }
                        }
                    }
            }
            .navigationBarTitle("")
            .navigationBarHidden(true)
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }

    func askQuestion() {
        symbols.shuffle()
        correctAnswer = Int.random(in: Self.questionsRange)
    }

    func symbolTapped(_ number: Int) {
        if number == correctAnswer {
            scoreTitle = "Correct"
            score += 1
        } else {
            scoreTitle = "Wrong"
        }
        showingScore = true
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
