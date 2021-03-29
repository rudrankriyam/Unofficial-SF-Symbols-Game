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

    var body: some View {
        VStack {
            ZStack(alignment: .center, content: {
                AppTitle("SF Symbols Game")
                    .font(type: .poppins, weight: .bold, style: .title3)

                HStack {
                    NavigationButton(imageName: "doc.text.viewfinder", label: "Viewer") {
                        activeSheet = .viewer
                    }

                    Spacer()

                    NavigationButton(imageName: "gear", label: "Settings") {
                        activeSheet = .settings
                    }
                }
            })
            .padding(.horizontal)

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
                .sheet(item: $activeSheet) { sheet in
                    switch sheet {
                        case .viewer: SymbolsViewerView()
                        case .settings: SettingsView()
                    }
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

enum MainViewActiveSheet: Identifiable {
    case viewer
    case settings

    var id: Int {
        hashValue
    }
}
