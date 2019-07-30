//
//  SolutionTests.swift
//  SolutionTests
//
//  Created by 이동영 on 25/07/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

import XCTest

class SolutionTests: XCTestCase {

    func test01 () {
        //Given
        let number = "1924"
        let k = 2
        let expected = "94"
        //When
        let result = solution(number, k)
        //Then
        XCTAssertEqual(result, expected)
    }
    
    func test02() {
        //Given
        let number = "1231234"
        let k = 3
        let expected = "3234"
        //When
        let result = solution(number, k)
        //Then
        XCTAssertEqual(result, expected)
    }
    
    func test03() {
        //Given
        let number = "4177252841"
        let k = 4
        let expected = "775841"
        //When
        let result = solution(number, k)
        //Then
        XCTAssertEqual(result, expected)
    }
    

}
