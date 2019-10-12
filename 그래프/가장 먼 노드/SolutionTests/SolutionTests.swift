//
//  SolutionTests.swift
//  SolutionTests
//
//  Created by 이동영 on 11/10/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

import XCTest

class SolutionTests: XCTestCase {

    func test01 () {
        // Given
        let vertex = [[3, 6],
                      [4, 3],
                      [3, 2],
                      [1, 3],
                      [1, 2],
                      [2, 4],
                      [5, 2]]

        let n = 6
        let expected = 3
        //When
        let result = solution(n, vertex)
        
        //Then
        XCTAssertEqual(result, expected)

    }
    
    func test2() {
        let v2 = [[1,3],
        [2,3],
        [3,4],
        [4,6],
        [5,6],
        [5,4]]
        let n = 6
           let expected = 3
           //When
           let result = solution(n, v2)
           
           //Then
           XCTAssertEqual(result, expected)
    }
}
