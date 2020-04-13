//
//  ContentView.swift
//  Unofficial SF Symbols Game
//
//  Created by Rudrank Riyam on 12/04/20.
//  Copyright © 2020 Rudrank Riyam. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var symbols = Symbols.symbols.shuffled()
    @State private var correctAnswer = Int.random(in: 0...2)

    @State private var showingScore = false
    @State private var scoreTitle = ""
    @State private var score = 0

    init() {
        UITableView.appearance().separatorColor = .clear
    }

    var body: some View {
        NavigationView {
            ScrollView {
                Image(systemName: symbols[correctAnswer])
                    .font(.system(size: UIScreen.main.bounds.width / 2))
                    .padding(.top, 30)
                    .accessibility(hidden: true)
                Spacer(minLength: 50)
                ForEach(0..<4, id: \.self) { symbol in
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
            .navigationBarTitle("SF Symbols Game")
        }
    .navigationViewStyle(StackNavigationViewStyle())
    }

    func askQuestion() {
        symbols.shuffle()
        correctAnswer = Int.random(in: 0...2)
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
