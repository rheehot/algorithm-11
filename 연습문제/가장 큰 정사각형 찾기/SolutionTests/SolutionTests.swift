//
//  SolutionTests.swift
//  SolutionTests
//
//  Created by 이동영 on 28/07/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

import XCTest

class SolutionTests: XCTestCase {
    
    func test01() {
        //Given
        let input = [[0,1,1,1],
                     [1,1,1,1],
                     [1,1,1,1],
                     [0,0,1,0]]
        let expected = 9
        //When
        let result = solution(input)
        //Then
        XCTAssertEqual(result, expected)
    }
    
    func test02() {
        //Given
        let input = [[0,0,1,1],
                     [1,1,1,1]]
        let expected = 4
        //When
        let result = solution(input)
        //Then
        XCTAssertEqual(result, expected)
        
    }
}
