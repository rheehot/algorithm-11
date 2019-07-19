//
//  SolutionTests.swift
//  SolutionTests
//
//  Created by 이동영 on 19/07/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

import XCTest

class SolutionTests: XCTestCase {

    func test01() {
        let month = 5
        let day = 24
        let expected = "TUE"
        
        let result = solution(month, day)
        
        XCTAssertEqual(result, expected)
    }

}
