//
//  SolutionTests.swift
//  SolutionTests
//
//  Created by 이동영 on 15/07/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

import XCTest

class SolutionTests: XCTestCase {
    
    func test01() {
        let input = "try hello world"
        let expected = "TrY HeLlO WoRlD"
        
        let result = solution(input)
        
        XCTAssertEqual(result, expected)
    }
    
    func test02() {
        let input = " try hello world"
        let expected = " TrY HeLlO WoRlD"
        
        let result = solution(input)
        
        XCTAssertEqual(result, expected)
    }
    
    func test03() {
        let input = "try hello  "
        let expected = "TrY HeLlO  "
        
        let result = solution(input)
        
        XCTAssertEqual(result, expected)
    }
    
    func test04() {
        let input = " a b  try hello  "
        let expected = " A B  TrY HeLlO  "
        
        let result = solution(input)
        
        XCTAssertEqual(result, expected)
    }
    
    func test05() {
        let input = "    "
        let expected = "    "
        
        let result = solution(input)
        
        XCTAssertEqual(result, expected)
    }
}

