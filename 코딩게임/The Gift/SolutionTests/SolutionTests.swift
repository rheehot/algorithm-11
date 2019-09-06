//
//  SolutionTests.swift
//  SolutionTests
//
//  Created by 이동영 on 07/09/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

import XCTest

class SolutionTests: XCTestCase {

    func test01() {
        let 인원수 = 3
        let 선물금액 = 100
        let 보유액 = [20,20,40]
        let expected = [Int]()
        
        let result = solution(인원수, 선물금액, 보유액)
        
        XCTAssertEqual(result, expected)
    }
    
    func test02() {
        let 인원수 = 3
        let 선물금액 = 100
        let 보유액 = [40, 40, 40]

        let expected = [33,33,34]
        
        let result = solution(인원수, 선물금액, 보유액)
        
        XCTAssertEqual(result, expected)
    }
    
    func test03() {
        let 인원수 = 3
        let 선물금액 = 100
        let 보유액 = [100,1,60]
        let expected = [1,49,50]
        
        let result = solution(인원수, 선물금액, 보유액)
        
        XCTAssertEqual(result, expected)
    }
    
    func test04() {
        let 인원수 = 3
        let 선물금액 = 10
        let 보유액 = [4, 4, 4]
        let expected = [3,3,4]
        
        let result = solution(인원수, 선물금액, 보유액)
        
        XCTAssertEqual(result, expected)
    }
    
    
    func test05() {
        let 인원수 = 3
        let 선물금액 = 3
        let 보유액 = [3,3,3]
        let expected = [1,1,1]
        
        let result = solution(인원수, 선물금액, 보유액)
        
        XCTAssertEqual(result, expected)
    }
}
