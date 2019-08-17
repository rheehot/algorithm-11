//
//  SolutionTests.swift
//  SolutionTests
//
//  Created by 이동영 on 18/08/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

import XCTest

class SolutionTests: XCTestCase {
    
    func test1() {
        //Given
        let input = "a234"
        let expected = false
        //When
        let result = solution(input)
        //Then
        XCTAssertEqual(result, expected)
        
    }
    
    func test02() {
        //Given
        let input = "1234"
        let expected = true
        //When
        let result = solution(input)
        //Then
        XCTAssertEqual(result, expected)
    }
}
