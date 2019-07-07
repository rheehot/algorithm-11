//
//  SolutionTests.swift
//  SolutionTests
//
//  Created by 이동영 on 07/07/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

import XCTest

class SolutionTests: XCTestCase {

    func test1 () {
        //Given
        let n = 5
        let lost = [2, 4]
        let reserve = [1, 3, 5]
        let expected = 5
       
        //When
        let result = solution(n, lost, reserve)
        
        //Then
        XCTAssertEqual(result, expected)
       
    }
    
    func test2 () {
        //Given
        let n = 5
        let lost = [2, 4]
        let reserve = [3]
        let expected = 4
        
        //When
        let result = solution(n, lost, reserve)
        
        //Then
        XCTAssertEqual(result, expected)
    }
    
    func test3() {
        //Given
        let n = 3
        let lost = [3]
        let reserve = [1]
        let expected = 2
        
        //When
        let result = solution(n, lost, reserve)
        
        //Then
        XCTAssertEqual(result, expected)
    }
}
