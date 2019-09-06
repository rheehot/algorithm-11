//
//  SolutionTests.swift
//  SolutionTests
//
//  Created by 이동영 on 07/09/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

import XCTest

class SolutionTests: XCTestCase {

    func test01 () {
        let message = "C"
        let expected = "0 0 00 0000 0 00"
        
        let result = solution(message)
        
        XCTAssertEqual(result, expected)
    }
    
    func test02 () {
        let message = "CC"
        let expected = "0 0 00 0000 0 000 00 0000 0 00"
        let result = solution(message)
        
        XCTAssertEqual(result, expected)
    }
    
    func test03 () {
        let message = "%"
        let expected = "00 0 0 0 00 00 0 0 00 0 0 0"
        
        let result = solution(message)
        
        XCTAssertEqual(result, expected)
    }
    
//    func test04 () {
//        let message = "C"
//        let expected = "0 0 00 0000 0 00"
//
//        let result = solution(message)
//
//        XCTAssertEqual(result, expected)
//    }
    
    

}
