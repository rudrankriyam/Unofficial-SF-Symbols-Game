//
//  FeedbackManager.swift
//  SF Symbols Game
//
//  Created by Rudrank Riyam on 22/05/21.
//  Copyright © 2021 Rudrank Riyam. All rights reserved.
//

import Foundation
import UIKit

struct FeedbackManager {

    // MARK:- Impact Feedbacks
    static func medium() {
        impactFeedback(style: .medium)
    }

    static func light() {
        impactFeedback(style: .light)
    }

    static func heavy() {
        impactFeedback(style: .heavy)
    }

    static func soft() {
        impactFeedback(style: .soft)
    }

    static func rigid() {
        impactFeedback(style: .rigid)
    }

    // MARK:-  Notification Feedbacks
    static func success() {
        notificationFeedback(feedbackType: .success)
    }

    static func error() {
        notificationFeedback(feedbackType: .error)
    }

    static func warning() {
        notificationFeedback(feedbackType: .warning)
    }

    private static func notificationFeedback(feedbackType: UINotificationFeedbackGenerator.FeedbackType) {
        let generator = UINotificationFeedbackGenerator()
        generator.prepare()
        generator.notificationOccurred(feedbackType)
    }

    private static func impactFeedback(style: UIImpactFeedbackGenerator.FeedbackStyle, intensity: CGFloat = 1) {
        let generator = UIImpactFeedbackGenerator(style: style)
        generator.prepare()
        generator.impactOccurred(intensity: intensity)
    }

    private static func selection() {
        let generator = UISelectionFeedbackGenerator()
        generator.prepare()
        generator.selectionChanged()
    }
}
