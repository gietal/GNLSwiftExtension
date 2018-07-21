//
//  ComparableTests.swift
//  GNLSwiftExtension
//
//  Created by Gieta Laksmana on 7/21/18.
//  Copyright © 2018 Gieta Laksmana. All rights reserved.
//

import XCTest
@testable import GNLSwiftExtension

class ComparableTests: XCTestCase {
    
    func testClamp() {
        XCTAssertEqual(clamp(0, low: 10, high: 20), 10)
        XCTAssertEqual(clamp(10, low: 10, high: 20), 10)
        XCTAssertEqual(clamp(15, low: 10, high: 20), 15)
        XCTAssertEqual(clamp(20, low: 10, high: 20), 20)
        XCTAssertEqual(clamp(25, low: 10, high: 20), 20)
        
    }
}
