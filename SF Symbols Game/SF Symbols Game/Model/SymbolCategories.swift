//
//  SymbolCategories.swift
//  SF Symbols Game
//
//  Created by Rudrank Riyam on 29/03/21.
//  Copyright © 2021 Rudrank Riyam. All rights reserved.
//

import SwiftUI

#warning("Find a better way to do this.")
enum SymbolCategories: String, CaseIterable {
    case all
    case general
    case communication
    case weather
    case objectAndTools
    case devices
    case connectivity
    case transportation
    case human
    case nature
    case editing
    case textFormatting
    case media
    case keyboard
    case commerce
    case time
    case health
    case shapes
    case arrows
    case indices
    case math
    case gaming
    case multicolor

    var symbols: [String] {
        switch self {
            case .all:
                return All.allCases.map { $0.systemName }
            case .general:
                return General.allCases.map { $0.systemName }
            case .communication:
                return Communication.allCases.map { $0.systemName }
            case .weather:
                return Weather.allCases.map { $0.systemName }
            case .objectAndTools:
                return ObjectAndTools.allCases.map { $0.systemName }
            case .devices:
                return Devices.allCases.map { $0.systemName }
            case .connectivity:
                return Connectivity.allCases.map { $0.systemName }
            case .transportation:
                return Transportation.allCases.map { $0.systemName }
            case .human:
                return Human.allCases.map { $0.systemName }
            case .nature:
                return Nature.allCases.map { $0.systemName }
            case .editing:
                return Editing.allCases.map { $0.systemName }
            case .textFormatting:
                return TextFormatting.allCases.map { $0.systemName }
            case .media:
                return Media.allCases.map { $0.systemName }
            case .keyboard:
                return Keyboard.allCases.map { $0.systemName }
            case .commerce:
                return Commerce.allCases.map { $0.systemName }
            case .time:
                return Time.allCases.map { $0.systemName }
            case .health:
                return Health.allCases.map { $0.systemName }
            case .shapes:
                return Shapes.allCases.map { $0.systemName }
            case .arrows:
                return Arrows.allCases.map { $0.systemName }
            case .indices:
                return Indices.allCases.map { $0.systemName }
            case .math:
                return Math.allCases.map { $0.systemName }
            case .gaming:
                return Gaming.allCases.map { $0.systemName }
            case .multicolor:
                return Multicolor.allCases.map { $0.systemName }
        }
    }

    var name: String {
        switch self {
            case .all, .general, .communication, .weather:
                return self.rawValue.capitalized
            case .objectAndTools:
                return "Object & Tools"
            case .devices, .connectivity, .transportation, .human, .nature, .editing:
                return self.rawValue.capitalized
            case .textFormatting:
                return "Text Formatting"
            case .media, .keyboard, .commerce, .time,  .health, .shapes, .arrows, .indices, .math, .gaming, .multicolor:
                return self.rawValue.capitalized
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
            case .transportation:
                return "car.fill"
            case .human:
                return "person.circle"
            case .nature:
                return "flame"
            case .editing:
                return "slider.horizontal.3"
            case .textFormatting:
                return "textformat"
            case .media:
                return "playpause"
            case .keyboard:
                return "command"
            case .commerce:
                return "cart"
            case .time:
                return "timer"
            case .health:
                return "staroflife"
            case .shapes:
                return "app"
            case .arrows:
                return "arrow.right"
            case .indices:
                return "bitcoinsign.circle.fill"
            case .math:
                return "x.squareroot"
            case .gaming:
                return "gamecontroller"
            case .multicolor:
                return "paintpalette"
        }
    }
}
