//
//  ProgressBarView.swift
//  SF Symbols Game
//
//  Created by Rudrank Riyam on 23/05/21.
//  Copyright © 2021 Rudrank Riyam. All rights reserved.
//

import SwiftUI

struct ProgressBarView: View {
    @Binding var value: Float
    
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Rectangle()
                    .frame(width: geometry.size.width, height: geometry.size.height)
                    .opacity(0.3)
                
                Rectangle()
                    .frame(width: min(CGFloat(value) * geometry.size.width, geometry.size.width),
                           height: geometry.size.height)
                    .animation(.linear)
            }
            .foregroundColor(.brandPink)
            .cornerRadius(12)
        }
    }
}

struct ProgressBarView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBarView(value: .constant(0.4))
    }
}
