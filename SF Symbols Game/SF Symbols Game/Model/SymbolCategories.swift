//
//  SymbolCategories.swift
//  SF Symbols Game
//
//  Created by Rudrank Riyam on 29/03/21.
//  Copyright © 2021 Rudrank Riyam. All rights reserved.
//

import SwiftUI

#warning("Find a better way to do this.")
enum SymbolCategories: CaseIterable {
    case all
    case general
    case communication
    case weather
    case objectAndTools
    case devices
    case connectivity

    var symbols: [SFSymbolsEnum] {
        switch self {
            case .all:
                return All.AllCases.init()
            case .general:
                return General.AllCases.init()
            case .communication:
                return Communication.AllCases.init()
            case .weather:
                return Weather.AllCases.init()
            case .objectAndTools:
                return ObjectAndTools.AllCases.init()
            case .devices:
                return Devices.AllCases.init()
            case .connectivity:
                return Connectivity.AllCases.init()
        }
    }

    var name: String {
        switch self {
            case .all:
                return "All"
            case .general:
                return "General"
            case .communication:
                return "Communication"
            case .weather:
                return "Weather"
            case .objectAndTools:
                return "Object & Tools"
            case .devices:
                return "Devices"
            case .connectivity:
                return "Connectivity"
        }
    }

    var image: String {
        switch self {
            case .all:
                return "square.grid.2x2"
            case .general:
                return "slowmo"
            case .communication:
                return "message"
            case .weather:
                return "cloud.sun"
            case .objectAndTools:
                return "folder"
            case .devices:
                return "tv"
            case .connectivity:
                return "antenna.radiowaves.left.and.right"
        }
    }
}
//
//var categories: [SymbolCategories<SFSymbolsEnum>] = [
//    SymbolCategories<All>(name: "All", image: "square.grid.2x2", symbols: All.self),
//    SymbolCategories<All>(name: "All", image: "square.grid.2x2", symbols: All.self),
//    SymbolCategories<All>(name: "All", image: "square.grid.2x2", symbols: All.self),
//    SymbolCategories<All>(name: "All", image: "square.grid.2x2", symbols: All.self),
//    SymbolCategories<All>(name: "All", image: "square.grid.2x2", symbols: All.self),
//    SymbolCategories<All>(name: "All", image: "square.grid.2x2", symbols: All.self),
//    SymbolCategories<All>(name: "All", image: "square.grid.2x2", symbols: All.self)
//]
