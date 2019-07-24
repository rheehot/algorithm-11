//
//  SolutionTests.swift
//  SolutionTests
//
//  Created by 이동영 on 24/07/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

import XCTest

class SolutionTests: XCTestCase {
    
    func test01() {
        //Given
        let input = "1 2 3 4"
        let expected = "1 4"
        
        //When
        let result = solution(input)
        
        //Then
        XCTAssertEqual(result, expected)
        
    }
    
    func test02() {
        //Given
        let input = "-1 -2 -3 -4"
        let expected = "-4 -1"
        
        //When
        let result = solution(input)
        
        //Then
        XCTAssertEqual(result, expected)
    }
    
    func test03() {
        //Given
        let input = "-1 -1"
        let expected = "-1 -1"
        
        //When
        let result = solution(input)
        
        //Then
        XCTAssertEqual(result, expected)
    }
    
}
