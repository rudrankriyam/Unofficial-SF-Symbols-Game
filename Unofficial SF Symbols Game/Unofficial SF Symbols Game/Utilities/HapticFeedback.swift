//
//  HapticFeedback.swift
//  Unofficial SF Symbols Game
//
//  Created by Gokul Nair on 01/02/21.
//  Copyright © 2021 Rudrank Riyam. All rights reserved.
//

import Foundation
import  AVKit

class haptickFeedback {
    // Declaring class as static
    static let feedback = haptickFeedback()
    // Haptic Feedback method
    func haptiFeedback() {
        let generator = UINotificationFeedbackGenerator()
        generator.notificationOccurred(.success)
    }
}
