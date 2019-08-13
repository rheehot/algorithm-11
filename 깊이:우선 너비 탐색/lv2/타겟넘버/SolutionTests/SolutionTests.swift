//
//  SolutionTests.swift
//  SolutionTests
//
//  Created by 이동영 on 14/08/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

import XCTest

class SolutionTests: XCTestCase {
    
    func test1() {
        //Given
        let numbers = [1, 1, 1, 1, 1]
        let target = 3
        let expected = 5
        
        //When
        let result = solution(numbers, target)
        
        //Then
        XCTAssertEqual(result, expected)
    }
}
