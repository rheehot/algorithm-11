//
//  _01.swift
//  001
//
//  Created by 이동영 on 30/07/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

import XCTest

class _01: XCTestCase {

    func test01() {
        //Given
        let input = 78
        let expected = 83
        //When
        let result = solution(input)
        //Then
        XCTAssertEqual(result, expected)
    }
    
    func test02() {
        //Given
        let input = 15
        let expected = 23
        //When
        let result = solution(input)
        //Then
        XCTAssertEqual(result, expected)
    }
    
}
