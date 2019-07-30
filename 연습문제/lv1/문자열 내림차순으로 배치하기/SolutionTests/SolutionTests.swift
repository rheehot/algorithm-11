//
//  SolutionTests.swift
//  SolutionTests
//
//  Created by 이동영 on 21/07/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

import XCTest

class SolutionTests: XCTestCase {
    func test01(){
        //Given
        let s = "Zbcdefg"
        let expected = "gfedcbZ"
        
        //When
        let result = solution(s)
        
        //Then
        XCTAssertEqual(result, expected)
    }
}
