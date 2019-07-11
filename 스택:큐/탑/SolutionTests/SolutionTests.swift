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
        let input = [6,9,5,7,4]
        let expected = [0,0,2,2,4]
        
        //When
        let result = solution(input)
        
        //Then
        XCTAssertEqual(result, expected)
        
    }
    
    func test02() {
        //Given
        let input = [3,9,9,3,5,7,2]
        let expected = [0,0,0,3,3,3,6]
        
        //When
        let result = solution(input)
        
        //Then
        XCTAssertEqual(result, expected)
    }
    
    func test03() {
        //Given
        let input = [1,5,3,6,7,6,5]
        let expected = [0,0,2,0,0,5,6]
        
        //When
        let result = solution(input)
        
        //Then
        XCTAssertEqual(result, expected)
    }
    
    
}
