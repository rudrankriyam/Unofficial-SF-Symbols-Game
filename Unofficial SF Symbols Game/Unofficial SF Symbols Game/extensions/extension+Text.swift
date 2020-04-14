//
//  extension+Text.swift
//  Unofficial SF Symbols Game
//
//  Created by Rudrank Riyam on 14/04/20.
//  Copyright © 2020 Rudrank Riyam. All rights reserved.
//

import SwiftUI

extension Text {
    func largeTitleText(topPadding: CGFloat) -> some View {
        self
            .font(.largeTitle)
            .bold()
            .foregroundColor(.white)
            .padding(.top, topPadding)
            .padding(.leading)
            .frame(maxWidth: .infinity, alignment: .leading)
    }
}
