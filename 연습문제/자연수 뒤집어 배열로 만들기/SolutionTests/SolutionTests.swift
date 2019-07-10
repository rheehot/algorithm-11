//
//  SolutionTests.swift
//  SolutionTests
//
//  Created by 이동영 on 11/07/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

import XCTest

class SolutionTests: XCTestCase {
    
    func test01() {
        //Given
        let input: Int64 = 12345
        let expected = [5,4,3,2,1]
        
        //When
        let result = solution(input)
        
        //Then
        XCTAssertEqual(result, expected)
    }
    
    func test02() {
        //Given
        let input: Int64 = 12986
        let expected = [6,8,9,2,1]
        
        //When
        let result = solution(input)
        
        //Then
        XCTAssertEqual(result, expected)
    }
    
    func test03() {
        //Given
        let input: Int64 = 93731
        let expected = [9,3,7,3,1]
        
        //When
        let result = solution(input)
        
        //Then
        XCTAssertEqual(result, expected)
    }
    
}
