//
//  SolutionTests.swift
//  SolutionTests
//
//  Created by 이동영 on 04/09/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

import XCTest

class SolutionTests: XCTestCase {
    
    func test01() {
        let n =  6
        let times = [7, 10]
        let expected: Int64 = 28
        
        let result = solution(n, times)
        
        XCTAssertEqual(result, expected)
    }
    
}
