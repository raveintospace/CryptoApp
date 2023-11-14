//
//  UIApplication.swift
//  CryptoApp
//
//  Created by Uri on 14/11/23.
//

import Foundation
import SwiftUI

extension UIApplication {
    
    // dismiss keyboard when tapping X symbol
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
