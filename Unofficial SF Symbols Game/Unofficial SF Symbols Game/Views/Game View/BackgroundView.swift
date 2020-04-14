//
//  BackgroundView.swift
//  Unofficial SF Symbols Game
//
//  Created by Rudrank Riyam on 14/04/20.
//  Copyright © 2020 Rudrank Riyam. All rights reserved.
//

import SwiftUI

struct BackgroundView: View {
    var leftColor = Color(red: 212/255, green: 20/255, blue: 90/255)
    var rightColor = Color(red: 251/255, green: 176/255, blue: 59/255)

    var body: some View {
        LinearGradient(gradient: Gradient(colors: [leftColor, rightColor]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView()
    }
}
