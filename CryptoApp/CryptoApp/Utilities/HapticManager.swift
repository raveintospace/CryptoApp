//
//  HapticManager.swift
//  CryptoApp
//  Lesson 16
//  Created by Uri on 24/11/23.
//

import Foundation
import SwiftUI

class HapticManager {
    
    static let generator = UINotificationFeedbackGenerator()
    
    static func notification(type: UINotificationFeedbackGenerator.FeedbackType) {
        generator.notificationOccurred(type)
    }
}
