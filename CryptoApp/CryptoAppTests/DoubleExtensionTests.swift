//
//  CryptoAppTests.swift
//  CryptoAppTests
//
//  Created by Uri on 19/11/23.
//

import XCTest
@testable import CryptoApp

final class DoubleExtensionTests: XCTestCase {
    
    
    func test_asCurrencyWith2Decimals() throws {
        // given
        let double = 3.73
        
        // when
        let doubleWithCurrency = double.asCurrencyWith2Decimals()
        
        // then
        XCTAssertEqual(doubleWithCurrency, "$3.73")
    }
    
    func test_asCurrencyWith6Decimals_roundUp() throws {
        // given
        let double = 3.1234567
        
        // when
        let doubleWithCurrency = double.asCurrencyWith6Decimals()
        
        // then
        XCTAssertEqual(doubleWithCurrency, "$3.123457")
    }
    
    func test_asCurrencyWith6Decimals_roundDown() throws {
        // given
        let double = 3.1234564
        
        // when
        let doubleWithCurrency = double.asCurrencyWith6Decimals()
        
        // then
        XCTAssertEqual(doubleWithCurrency, "$3.123456")
    }
    
    func test_asNumberString() throws {
        // given
        let double = 3.1234564
        
        // when
        let doubleWithCurrency = double.asNumberString()
        
        // then
        XCTAssertEqual(doubleWithCurrency, "3.12")
    }
    
    func test_asPercentString() throws {
        // given
        let double = 3.1234564
        
        // when
        let doubleWithCurrency = double.asPercentString()
        
        // then
        XCTAssertEqual(doubleWithCurrency, "3.12%")
    }
    
    func test_formattedWithAbbreviations() throws {
        
    }
}
