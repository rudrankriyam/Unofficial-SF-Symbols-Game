//
//  LikeButtonView.swift
//  SF Symbols Game
//
//  Created by Rudrank Riyam on 22/05/21.
//  Copyright © 2021 Rudrank Riyam. All rights reserved.
//

import SwiftUI

struct LikeButtonView: View {
    @Binding var score: Int
    
    @State private var scale: CGFloat = 1
    @State private var opacity = 0.0
    
    var body: some View {
        HStack {
            Text("Score: \(score)")
                .font(weight: .bold, style: .callout)
                .foregroundColor(.red)
                .animation(.none)
                .frame(minWidth: 50)
            
            ZStack {
                Image(systemName: "heart.fill")
                    .foregroundColor(.red)
                    .animation(.linear)
                
                CirclesView(radius: 35, speed: 0.1, scale: 0.5)
                    .opacity(opacity)
                
                CirclesView(radius: 55, speed: 0.2, scale: 0.3)
                    .opacity(opacity)
                    .rotationEffect(Angle(degrees: 20))
            }
            .font(.title)
        }
        .onChange(of: score, perform: { value in
            withAnimation (.linear(duration: 1)) {
                scale = scale == 1 ? 1.3 : 1
                opacity = opacity == 0 ? 1 : 0
            }
            withAnimation {
                opacity = opacity == 0 ? 1 : 0
            }
        })
    }
}

struct LikeButtonView_Previews: PreviewProvider {
    static var previews: some View {
        LikeButtonView(score: .constant(2))
    }
}

struct CirclesView : View {
    let angle: CGFloat = 40
    let radius: CGFloat
    let speed: Double
    let scale: CGFloat
    
    var body: some View {
        ZStack {
            ForEach (0..<9) { num in
                Circle()
                    .fill(Color.red)
                    .frame(width: 10)
                    .scaleEffect(scale)
                    .animation(.linear(duration: speed))
                    .offset(x: radius * cos(CGFloat(num) * angle * .pi / 180),
                            y: radius * sin(CGFloat(num) * angle * .pi / 180))
            }
        }
    }
}
