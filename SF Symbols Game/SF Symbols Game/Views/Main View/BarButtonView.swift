//
//  BarButtonView.swift
//  Unofficial SF Symbols Game
//
//  Created by Rudrank Riyam on 14/04/20.
//  Copyright © 2020 Rudrank Riyam. All rights reserved.
//

import SwiftUI

struct BarButtonView: View {
    var imageName: String
    var accessibilityName: String

    var body: some View {
        Image(systemName: imageName)
            .resizable()
            .font(.system(size: 25))
            .foregroundColor(.primaryColor)
            .accessibility(label: Text(accessibilityName))
    }
}

struct BarButtonView_Previews: PreviewProvider {
    static var previews: some View {
        BarButtonView(imageName: "car.fill", accessibilityName: "Car")
    }
}
