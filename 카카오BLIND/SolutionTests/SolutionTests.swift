//
//  SolutionTests.swift
//  SolutionTests
//
//  Created by 이동영 on 07/09/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

import XCTest

class SolutionTests: XCTestCase {
    
    func test1_1() {
        let s = "aabbaccc"
        let expected = 7
        
        let result = solution1(s)
        
        XCTAssertEqual(result, expected)
    }
    
    func test1_2() {
        let s = "ababcdcdababcdcd"
        let expected = 9
        
        let result = solution1(s)
        
        XCTAssertEqual(result, expected)
    }
    
    func test1_3() {
        let s = "abcabcdede"
        let expected = 8
        
        let result = solution1(s)
        
        XCTAssertEqual(result, expected)
        
    }
    
    func test1_4() {
        let s = "abcabcabcabcdededededede"
        let expected = 14
        
        let result = solution1(s)
        
        XCTAssertEqual(result, expected)
    }
    
    func test1_5() {
        let s = "xababcdcdababcdcd"
        let expected = 17
        
        let result = solution1(s)
        
        XCTAssertEqual(result, expected)
        
    }
    
    
}
