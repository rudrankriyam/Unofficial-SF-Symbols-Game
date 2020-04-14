//
//  extension+View.swift
//  Unofficial SF Symbols Game
//
//  Created by Rudrank Riyam on 12/04/20.
//  Copyright © 2020 Rudrank Riyam. All rights reserved.
//

import SwiftUI

extension View {
    func customBackground() -> some View {
        self
            .padding(20)
            .foregroundColor(.white)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(RoundedRectangle(cornerRadius: 16, style: .continuous).fill(Color.black).opacity(0.2).blur(radius: 0.5))
            .padding([.horizontal, .bottom])
    }

    func customImage() -> some View {
        self
            .font(.largeTitle)
            .padding(100)
            .foregroundColor(.white)
            .accessibility(hidden: true)
    }
}
