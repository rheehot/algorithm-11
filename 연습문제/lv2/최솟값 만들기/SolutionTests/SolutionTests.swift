//
//  SolutionTests.swift
//  SolutionTests
//
//  Created by 이동영 on 18/08/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

import XCTest

class SolutionTests: XCTestCase {
    
    func test1() {
        //Given
        let input1 = [1, 4, 2]
        let input2 = [5, 4, 4]
        let expected = 29
        //When
        let result = solution(input1, input2)
        //Then
        XCTAssertEqual(result, expected)
    }
    
    func test2() {
        //Given
        let input1 = [1,2]
        let input2 = [3,4]
        let expected = 10
        //When
        let result = solution(input1, input2)
        //Then
        XCTAssertEqual(result, expected)
    }
    
    
}
