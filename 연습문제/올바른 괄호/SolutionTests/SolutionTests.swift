//
//  SolutionTests.swift
//  SolutionTests
//
//  Created by 이동영 on 27/07/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

import XCTest

class SolutionTests: XCTestCase {

    func test01() {
        //Given
        let input = "()()"
        let expected = true
        //When
        let result = solution(input)
        //Then
        XCTAssertEqual(result, expected)
     
    }
    
    func test02() {
        //Given
        let input = "(())()"
        let expected = true
        //When
        let result = solution(input)
        //Then
        XCTAssertEqual(result, expected)
    }
    
    func test03() {
        //Given
        let input = ")()("
        let expected = false
        //When
        let result = solution(input)
        //Then
        XCTAssertEqual(result, expected)

    }
    
    func test04() {
        //Given
        let input =  "(()("
        let expected = false
        //When
        let result = solution(input)
        //Then
        XCTAssertEqual(result, expected)
    }
    
}
