//
//  String.swift
//  CryptoApp
//
//  Created by Uri on 30/11/23.
//

import Foundation

extension String {
    
    var removingHTMLOccurances: String {
        return self.replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression, range: nil)
    }
}
