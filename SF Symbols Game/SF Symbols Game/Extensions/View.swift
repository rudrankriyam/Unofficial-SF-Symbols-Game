//
//  View.swift
//  Unofficial SF Symbols Game
//
//  Created by Rudrank Riyam on 12/04/20.
//  Copyright © 2020 Rudrank Riyam. All rights reserved.
//

import SwiftUI

extension View {
    func customBackground(isSelected: Bool = true) -> some View {
        var gradient: LinearGradient {
            LinearGradient(gradient: Gradient(colors: [.brandPink, .brandPurple]), startPoint: .topLeading, endPoint: .bottomTrailing)
        }

        return self
            .padding()
            .foregroundColor(.primary)
            .frame(maxWidth: .infinity, alignment: .leading)
            .overlay(RoundedRectangle(cornerRadius: 12)
                .stroke(gradient, lineWidth: 2))
            .background(isSelected ? RoundedRectangle(cornerRadius: 12)
                .fill(gradient) : nil)
            .padding(.horizontal)
            .padding(.bottom, 4)
    }

    func customImage() -> some View {
        self
            .font(Font.system(size: UIFontMetrics(forTextStyle: .largeTitle).scaledValue(for: 100)))
            .accessibility(hidden: true)
    }
}


public struct GradientButton: View {
    private var title: String
    private var font: UIFont.TextStyle = .headline
    private var action: () -> ()

    public init(title: String, font: UIFont.TextStyle = .headline, action: @escaping () -> Void) {
        self.font = font
        self.title = title
        self.action = action
    }

    public var body: some View {
        Button(action: withAnimation { action }, label: {
            Text(title)
                .kerning(1.0)
                .font(weight: .bold, style: font)
        })
        .buttonStyle(GradientButtonStyle())
    }
}

struct GradientButton_Previews: PreviewProvider {
    static var previews: some View {
        GradientButton(title: "Evaluate", action: {})
    }
}

public struct GradientButtonStyle: ButtonStyle {
    let primaryGradient = Gradient(colors: [.secondary, .secondary])
    let secondaryGradient = Gradient(colors: [Color(.lightGray), Color(.darkGray)])
    public func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .foregroundColor(.white)
            .font(weight: .semiBold, style: .title3)
            .padding(.vertical)
            .frame(maxWidth: .infinity, alignment: .center)
            .background(AnimatedGradientView().cornerRadius(12))
            .scaleEffect(configuration.isPressed ? 0.98 : 1.0)
            .opacity(configuration.isPressed ? 0.9 : 1.0)
            .padding([.top])
    }
}

public struct AnimatedGradientView: View {
    @State private var gradientA: [Color] = [.brandPurple, .brandPink]
    @State private var gradientB: [Color] = [.brandPink, .brandPurple]
    
    @State private var firstPlane: Bool = true
    @State private var colorIndex: Int = 1
    
    private let gradients: [[Color]] = [[.brandPurple, .brandPink],
                                        [.brandPink, .brandPurple],
                                        [.brandPurple, .brandPink],
                                        [.brandPink, .brandPurple]]

    private let timer = Timer.publish(every: 4.0, on: .main, in: .common).autoconnect()

    public var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: gradientA), startPoint: .bottomTrailing, endPoint: .topLeading)
            LinearGradient(gradient: Gradient(colors: gradientB), startPoint: .bottomTrailing, endPoint: .topLeading)
                .opacity(self.firstPlane ? 0 : 1)
        }
        .animation(.easeInOut(duration: 4.0))
        .onReceive(timer) { _ in
            if colorIndex == gradients.count {
                colorIndex = 0
            }

            setGradient(gradient: gradients[colorIndex])
            colorIndex += 1
        }
    }

    private func setGradient(gradient: [Color]) {
        firstPlane ? (gradientB = gradient) : (gradientA = gradient)
        firstPlane = !firstPlane
    }
}
