//
//  MainView.swift
//  SF Symbols Game
//
//  Created by Rudrank Riyam on 28/04/21.
//  Copyright © 2021 Rudrank Riyam. All rights reserved.
//

import SwiftUI
import RRComponentsKit

enum MainViewActiveSheet: Identifiable, CaseIterable {
    case arcade
    case challenge
    case casual
    case viewer
    case settings
    
    var id: Int {
        hashValue
    }
}

struct MainView: View {
    @State private var activeSheet: MainViewActiveSheet?
    
    var body: some View {
        VStack {
            Text("SF Symbols Game")
                .largeTitleText()
            
            Spacer()
            
            VStack {
                HStack {
                    MainViewGridItem(image: "🕹", mode: "arcade") {
                        activeSheet = .arcade
                    }
                    MainViewGridItem(image: "⏳", mode: "challenge") {
                        activeSheet = .challenge
                    }
                }
                .padding()
                
                HStack {
                    MainViewGridItem(image: "🎮", mode: "casual") {
                        activeSheet = .casual
                    }
                    MainViewGridItem(image: "⚜️", mode: "viewer") {
                        activeSheet = .viewer
                    }
                }
                .padding()
            }
            
            Spacer()
            
            NavigationButton(imageName: "gear", label: "Settings") {
                activeSheet = .settings
            }
        }
        .padding(.horizontal)
        .sheet(item: $activeSheet) { sheet in
            switch sheet {
            case .viewer: SymbolsViewerView()
            case .settings: SettingsView()
            case .challenge: MainSymbolGameView().environmentObject(MainSymbolGameViewModel())
            case .casual: MainSymbolGameView().environmentObject(MainSymbolGameViewModel())
            case .arcade: MainSymbolGameView().environmentObject(MainSymbolGameViewModel())
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

struct MainViewGridItem: View {
    var image: String
    var mode: String
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            VStack {
                Text(image)
                    .font(style: .largeTitle)
                    .frame(maxWidth: .infinity, alignment: .center)
                    .customBackground()
                
                Text(mode.capitalized)
                    .font()
            }
        }
        .buttonStyle(PlainButtonStyle())
    }
}
