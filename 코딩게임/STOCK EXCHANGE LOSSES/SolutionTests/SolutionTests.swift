//
//  SolutionTests.swift
//  SolutionTests
//
//  Created by 이동영 on 07/09/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

import XCTest

class SolutionTests: XCTestCase {

    func test01 () {
        let n = 6
        let prices = "3 2 4 2 1 5"
        let expected = -3
        
        let result = solution(n, prices)
        
        XCTAssertEqual(result, expected)
    }
    
    func test02 () {
        let n = 6
        let prices = "5 3 4 2 3 1"
        let expected = -4
        
        let result = solution(n, prices)
        
        XCTAssertEqual(result, expected)
    }
    
    func test03 () {
        let n = 5
        let prices = "1 2 4 4 5"
        let expected = 0
        
        let result = solution(n, prices)
        
        XCTAssertEqual(result, expected)
    }

}
