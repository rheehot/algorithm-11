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
        let array = [1, 5, 2, 6, 3, 7, 4]
        let commands = [[2, 5, 3], [4, 4, 1], [1, 7, 3]]
        
        let expected = [5, 6, 3]
        
        //When
        let result = solution(array, commands)
        
        //Then
        XCTAssertEqual(result, expected)
    }

}
