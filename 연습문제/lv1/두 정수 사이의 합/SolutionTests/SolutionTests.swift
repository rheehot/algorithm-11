//
//  SolutionTests.swift
//  SolutionTests
//
//  Created by 이동영 on 13/07/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

import XCTest

class SolutionTests: XCTestCase {
    
    func test01() {
        //Given
        let a = 3
        let b = 5
        let expected: Int64 = 12
        
        //When
        let result = solution(a, b)
        
        //Then
        XCTAssertEqual(result, expected)
    }
    
    func test02() {
        //Given
        let a = 3
        let b = 3
        let expected: Int64 = 3
        
        //When
        let result = solution(a, b)
        
        //Then
        XCTAssertEqual(result, expected)
    }
    
    func test03() {
        //Given
        let a = 5
        let b = 3
        let expected: Int64 = 12
        
        //When
        let result = solution(a, b)
        
        //Then
        XCTAssertEqual(result, expected)
    }
    
}
