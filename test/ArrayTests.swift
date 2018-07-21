//
//  GNLSwiftExtensionTests.swift
//  GNLSwiftExtensionTests
//
//  Created by Gieta Laksmana on 7/21/18.
//  Copyright © 2018 Gieta Laksmana. All rights reserved.
//

import XCTest
@testable import GNLSwiftExtension

class ArrayTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testContainsAContentOf() {
        let array = [0, 1, 2, 3, 4, 5]
        XCTAssertTrue(array.contains(aContentOf: []))
        XCTAssertTrue(array.contains(aContentOf: [0, 5]))
        
        XCTAssertTrue(array.contains(aContentOf: [0, 6]))
        
        XCTAssertTrue(array.contains(aContentOf: [6, 5]))
        
        XCTAssertFalse(array.contains(aContentOf: [6, 7, 8]))
    }
    
    func testContainsContentsOf() {
        let array = [0, 1, 2, 3, 4, 5]
        XCTAssertTrue(array.contains(contentsOf: []))
        XCTAssertTrue(array.contains(contentsOf: [0, 5]))
        XCTAssertTrue(array.contains(contentsOf: [ 1, 2, 3, 4]))
        
        XCTAssertTrue(array.contains(contentsOf: [0, 1, 2, 3, 4, 5]))
        
        XCTAssertFalse(array.contains(contentsOf: [6]))
        XCTAssertFalse(array.contains(contentsOf: [0, 1, 2, 6]))
    }
    func testRemoveAtPositions() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        var array = [0, 1, 2, 3, 4, 5]
        
        let removed = array.remove(at: [0, 2, 4, 5])
        XCTAssertEqual(array.count, 2)
        XCTAssertEqual(array[0], 1)
        XCTAssertEqual(array[1], 3)
        XCTAssertTrue(removed.contains(contentsOf: [0, 2, 4, 5]))
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
