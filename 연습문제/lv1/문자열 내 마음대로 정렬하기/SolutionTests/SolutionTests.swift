//
//  SolutionTests.swift
//  SolutionTests
//
//  Created by 이동영 on 21/07/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

import XCTest

class SolutionTests: XCTestCase {

    func test01() {
        //Given
        let strings = ["sun", "bed", "car"]
        let n = 1
        let expected = ["car", "bed", "sun"]
        
        //When
        let result = solution(strings, n)
        
        //Then
        XCTAssertEqual(result, expected)
        
    }
    
    func test02() {
        //Given
        let strings = ["abce", "abcd", "cdx"]
        let n = 2
        let expected = ["abcd", "abce", "cdx"]
        
        //When
        let result = solution(strings, n)
        
        //Then
        XCTAssertEqual(result, expected)
        
    }
    
}
