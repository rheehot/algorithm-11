//
//  SolutionTests.swift
//  SolutionTests
//
//  Created by 이동영 on 12/07/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

import XCTest

class SolutionTests: XCTestCase {

    func test01() {
        //Given
        let input = "JEROEN"
        let expected = 56
        
        //When
        let result = solution(input)
        
        //Then
        XCTAssertEqual(result, expected)
    }
    
    func test02() {
        //Given
        let input = "JAN"
        let expected = 23
        
        //When
        let result = solution(input)
        
        //Then
        XCTAssertEqual(result, expected)
    }
    
    func test03() {
        //Given
        let input = "JAA"
        let expected = 9
        
        //When
        let result = solution(input)
        
        //Then
        XCTAssertEqual(result, expected)
    }

    func test04() {
        //Given
        let input = "AAA"
        let expected = 0
        
        //When
        let result = solution(input)
        
        //Then
        XCTAssertEqual(result, expected)
    }
    
    func test05() {
        //Given
        let input = "JAAZ"
        let expected = 11
        
        //When
        let result = solution(input)
        
        //Then
        XCTAssertEqual(result, expected)
    }
    
    func test06() {
        //Given
        let input = "BCAA"
        let expected = 4
        
        //When
        let result = solution(input)
        
        //Then
        XCTAssertEqual(result, expected)
    }
    
    func test07() {
        //Given
        let input = "ACCADDAAA"
        let expected = 1+2+1+2+1+1+3+1+3
        
        //When
        let result = solution(input)
        
        //Then
        XCTAssertEqual(result, expected)
    }
}
