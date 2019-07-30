//
//  SolutionTests.swift
//  SolutionTests
//
//  Created by 이동영 on 23/07/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

import XCTest

class SolutionTests: XCTestCase {

    func test01() {
        //Given
        let n = 12
        let expected = 28
        
        //When
        let result = solution(n)
        
        //Then
        XCTAssertEqual(result, expected)
        
    }
    
    func test02() {
        //Given
        let n = 5
        let expected = 6
        
        //When
        let result = solution(n)
        
        //Then
        XCTAssertEqual(result, expected)
        
    }

}
