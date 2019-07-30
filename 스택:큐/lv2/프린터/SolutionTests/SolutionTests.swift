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
        let priorities = [2, 1, 3, 2]
        let location = 2
        
        let expected = 1
        
        //When
        let result = solution(priorities, location)
        
        //Then
        XCTAssertEqual(result, expected)
        
    }
    
    func test2() {
        //Given
        let priorities = [1, 1, 9, 1, 1, 1]
        let location = 0
        
        let expected = 5
        
        //When
        let result = solution(priorities, location)
        
        //Then
        XCTAssertEqual(result, expected)
    }
}
