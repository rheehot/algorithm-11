//
//  SolutionUnitTests.swift
//  SolutionUnitTests
//
//  Created by 이동영 on 20/09/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

import XCTest

class SolutionUnitTests: XCTestCase {

    func test01() {
        let N = 5
        let number = 12
        let expected = 4
        
        let result = solution(N, number)
        XCTAssertEqual(expected, result)
    }
    
    func test02() {
        let N = 2
        let number = 11
        let expected = 3
        
        let result = solution(N, number)
        XCTAssertEqual(expected, result)
    }
}
