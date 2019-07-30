//
//  SolutionTests.swift
//  SolutionTests
//
//  Created by 이동영 on 14/07/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

import XCTest

class SolutionTests: XCTestCase {
    
    func test01 () {
        //Given
        let input = 123
        let expected = 6
        
        //When
        let result = solution(input)
        
        //Then
        XCTAssertEqual(result, expected)
    }
    func test02 () {
        //Given
        let input = 987
        let expected = 24
        
        //When
        let result = solution(input)
        
        //Then
        XCTAssertEqual(result, expected)
    }
    
    func test03 () {
        //Given
        let input = 100
        let expected = 1
        
        //When
        let result = solution(input)
        
        //Then
        XCTAssertEqual(result, expected)
    }
    
}
