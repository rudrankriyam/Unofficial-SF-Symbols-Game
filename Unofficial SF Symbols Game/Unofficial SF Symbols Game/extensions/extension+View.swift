//
//  extension+View.swift
//  Unofficial SF Symbols Game
//
//  Created by Rudrank Riyam on 12/04/20.
//  Copyright © 2020 Rudrank Riyam. All rights reserved.
//

import SwiftUI
var leftColor = Color(red: 212/255, green: 20/255, blue: 90/255)
var rightColor = Color(red: 251/255, green: 176/255, blue: 59/255)

extension View {
    func customBackground() -> some View {
        self
            .padding(20)
            .foregroundColor(.primary)
            .frame(maxWidth: .infinity, alignment: .leading)
            .overlay(RoundedRectangle(cornerRadius: 16)
                .stroke(LinearGradient(gradient: Gradient(colors: [leftColor, rightColor]), startPoint: .topLeading, endPoint: .bottomTrailing), lineWidth: 2))
            .padding([.horizontal, .bottom])
    }

    func customImage() -> some View {
        self
            .font(Font.system(size: UIFontMetrics(forTextStyle: .largeTitle).scaledValue(for: 100)))
            .padding(100)
            .accessibility(hidden: true)
    }
}
