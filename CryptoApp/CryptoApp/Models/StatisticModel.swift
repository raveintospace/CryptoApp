//
//  StatisticModel.swift
//  CryptoApp
//  Lesson 12
//  Created by Uri on 17/11/23.
//

import Foundation

struct StatisticModel: Identifiable {
    let id = UUID().uuidString
    let title: String
    let value: String
    let percentageChange: Double?
    
    // custom init with default nil value for percentageChange
    init(title: String, value: String, percentageChange: Double? = nil) {
        self.title = title
        self.value = value
        self.percentageChange = percentageChange
    }
}
