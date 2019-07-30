//
//  SolutionTests.swift
//  SolutionTests
//
//  Created by 이동영 on 25/07/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

import XCTest

class SolutionTests: XCTestCase {

    func test01() {
        
        //Given
        let progresses = [93,30,55]
        let speeds = [1,30,5]
        let expected = [2,1]
        
        //When
        let result = solution(progresses, speeds)
        
        //Then
        XCTAssertEqual(result, expected)
    }
}
