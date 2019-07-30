//
//  SolutionTests.swift
//  SolutionTests
//
//  Created by 이동영 on 16/07/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

import XCTest

class SolutionTests: XCTestCase {
    
    func test01() {
        let input = 10
        let expected = 4
        
        let result = solution(input)
        
        XCTAssertEqual(result, expected)
    }
    
    func test02() {
        let input = 5
        let expected = 3
        
        let result = solution(input)
        
        XCTAssertEqual(result, expected)
    }
}

