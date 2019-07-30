//
//  SolutionTests.swift
//  SolutionTests
//
//  Created by 이동영 on 10/07/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

import XCTest

class SolutionTests: XCTestCase {

    func test1() {
        //Given
        let input = 10
        let expected = "수박수박수박수박수박"
       
        //When
        let result = solution(input)
        
        //Then
        XCTAssertEqual(result, expected)
        
    }
    
    func test2() {
        //Given
        let input = 11
        let expected = "수박수박수박수박수박수"
        
        //When
        let result = solution(input)
        
        //Then
        XCTAssertEqual(result, expected)
        
    }
    
    func test3() {
        //Given
        let input = 3
        let expected = "수박수"
        
        //When
        let result = solution(input)
        
        //Then
        XCTAssertEqual(result, expected)
        
    }
    
    func test4() {
        //Given
        let input = 4
        let expected = "수박수박"
        
        //When
        let result = solution(input)
        
        //Then
        XCTAssertEqual(result, expected)
        
    }
   

}
