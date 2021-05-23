//
//  ChallengeGameView.swift
//  SF Symbols Game
//
//  Created by Rudrank Riyam on 23/05/21.
//  Copyright © 2021 Rudrank Riyam. All rights reserved.
//

import SwiftUI

struct ChallengeGameView: View {
    @EnvironmentObject var viewModel: MainSymbolGameViewModel
    @State private var elapsedTime: Float = 0
    
    private let timer = Timer.publish(every: 0.1, on: .main, in: .common)
        .autoconnect()
    
    var body: some View {
        VStack {
            HStack(alignment: .firstTextBaseline) {
                Text("Time: \(20 - Int(elapsedTime * 20))s left")
                    .font(weight: .bold, style: .callout)
                    .foregroundColor(.secondary)
                
                Spacer()
                
                LikeButtonView(score: $viewModel.score)
            }
            .padding([.top, .horizontal])
            .frame(height: 40)
            
            ProgressBarView(value: $elapsedTime)
                .frame(height: 10)
                .padding(.horizontal)
            
            GamePlayView()
        }
        .padding(.bottom)
        .background(Color.traitsBackground)
        .edgesIgnoringSafeArea(.all)
        .onReceive(timer) { _ in
            updateTime()
        }
    }
    
    private func updateTime() {
        if elapsedTime < 1 {
            elapsedTime += 0.005
        } else {
            timer.upstream.connect().cancel()
        }
    }
}

struct ChallengeGameView_Previews: PreviewProvider {
    static var previews: some View {
        ChallengeGameView()
    }
}
