//
//  SolutionTests.swift
//  SolutionTests
//
//  Created by 이동영 on 07/07/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

import XCTest

class SolutionTests: XCTestCase {
    
    func test1() {
        //Given
        let input = [1,2,3,4,5]
        let expected = [1]
        
        //When
        let result = solution(input)
        
        //Then
        XCTAssertEqual(result, expected)
        
    }
    func test2() {
        //Given
        let input = [1,3,2,4,2]
        let expected = [1,2,3]
        
        //When
        let result = solution(input)
        
        //Then
        XCTAssertEqual(result, expected)
    }
    
}
