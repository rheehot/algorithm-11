//
//  SolutionTests.swift
//  SolutionTests
//
//  Created by 이동영 on 22/07/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

import XCTest

class SolutionTests: XCTestCase {

    func test01() {
        let arr = [5, 9, 7, 10]
        let divisor = 5
        let expected = [5, 10]
     
        let result = solution(arr, divisor)
        
        XCTAssertEqual(result, expected)
        
    }
    
    func test02() {
        let arr = [2, 36, 1, 3]
        let divisor = 1
        let expected = [1, 2, 3, 36]
        
        let result = solution(arr, divisor)
        
        XCTAssertEqual(result, expected)
    }
    
    func test03() {
        let arr = [3,2,6]
        let divisor = 10
        let expected = [-1]
        
        let result = solution(arr, divisor)
        
        XCTAssertEqual(result, expected)
    }
    

}
