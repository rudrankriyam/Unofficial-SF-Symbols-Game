//
//  BackgroundView.swift
//  Unofficial SF Symbols Game
//
//  Created by Rudrank Riyam on 14/04/20.
//  Copyright © 2020 Rudrank Riyam. All rights reserved.
//

import SwiftUI

struct BackgroundModifier: ViewModifier {
    var leftColor = Color(red: 212/255, green: 20/255, blue: 90/255)
    var rightColor = Color(red: 251/255, green: 176/255, blue: 59/255)

    func body(content: Content) -> some View {
        content
            .background(LinearGradient(gradient: Gradient(colors: [leftColor, rightColor]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all))
    }
}
