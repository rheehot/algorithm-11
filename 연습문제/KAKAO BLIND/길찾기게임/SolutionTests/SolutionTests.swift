//
//  SolutionTests.swift
//  SolutionTests
//
//  Created by 이동영 on 03/09/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

import XCTest

class SolutionTests: XCTestCase {

    func test01() {
        let input = [[5,3],[11,5],[13,3],[3,5],[6,1],[1,3],[8,6],[7,2],[2,2]]
        let expected = [[7,4,6,9,1,8,5,2,3],[9,6,5,8,1,4,3,2,7]]
        
        let result = solution(input)
        
        XCTAssertEqual(result[0], expected[0])
        XCTAssertEqual(result[1], expected[1])
        
    }
}
