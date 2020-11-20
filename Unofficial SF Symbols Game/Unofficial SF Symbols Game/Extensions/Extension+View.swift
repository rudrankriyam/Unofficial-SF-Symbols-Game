//
//  Extension+View.swift
//  Unofficial SF Symbols Game
//
//  Created by Rudrank Riyam on 12/04/20.
//  Copyright © 2020 Rudrank Riyam. All rights reserved.
//

import SwiftUI

extension View {
    func customBackground() -> some View {
        let leftColor = Color(red: 187/255, green: 58/255, blue: 95/255)
        let rightColor = Color(red: 112/255, green: 60/255, blue: 131/255)

        return self
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
            .accessibility(hidden: true)
    }
}
