//
//  LikeButtonView.swift
//  SF Symbols Game
//
//  Created by Rudrank Riyam on 22/05/21.
//  Copyright © 2021 Rudrank Riyam. All rights reserved.
//

import SwiftUI

struct LikeButtonView: View {
    @Binding var isPressed: Bool
    @Binding var score: Int
    
    @State private var scale: CGFloat = 1
    @State private var opacity = 0.0
    
    var body: some View {
        HStack {
            Text("\(score)").foregroundColor(.red).bold()
                .animation(.none)
                .frame(width: 30)
            ZStack {
                Image(systemName: "heart.fill")
                    .opacity(isPressed ? 1 : 0)
                    .animation(.linear)
                
                Image(systemName: "heart")
                    .foregroundColor(.red)
                
                CirclesView(isPressed: $isPressed, radius: 35, speed: 0.1, scale: 0.5)                .opacity(opacity)
                
                CirclesView(isPressed: $isPressed, radius: 55, speed: 0.2, scale: 0.3)
                    .opacity(opacity)
                    .rotationEffect(Angle(degrees: 20))
            }
            .font(.title)
        }
        .onChange(of: isPressed, perform: { value in
            withAnimation (.linear(duration: 1)) {
                scale = scale == 1 ? 1.3 : 1
                opacity = opacity == 0 ? 1 : 0
            }
            withAnimation {
                opacity = opacity == 0 ? 1 : 0
            }
        })
        .foregroundColor(isPressed ? .red : .white)
    }
}

struct LikeButtonView_Previews: PreviewProvider {
    static var previews: some View {
        LikeButtonView(isPressed: .constant(true), score: .constant(2))
    }
}

struct CirclesView : View {
    @Binding var isPressed: Bool
    
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
                    .scaleEffect(isPressed ? 0.1 : scale)
                    .animation(.linear(duration: speed))
                    .offset(x: radius * cos(CGFloat(num) * angle * .pi / 180),
                            y: radius * sin(CGFloat(num) * angle * .pi / 180))
            }
        }
    }
}
