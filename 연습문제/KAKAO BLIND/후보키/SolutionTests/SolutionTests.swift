//
//  SolutionTests.swift
//  SolutionTests
//
//  Created by 이동영 on 26/08/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

import XCTest

class SolutionTests: XCTestCase {
    func test01() {
        //Given
        let  input = [
            ["100","ryan","music","2"],
            ["200","apeach","math","2"],
            ["300","tube","computer","3"],
            ["400","con","computer","4"],
            ["500","muzi","music","3"],
            ["600","apeach","music","2"]]
        let expected = 2
        //When
        let result = solution(input)
        //Then
        XCTAssertEqual(result, expected)
    }

}

