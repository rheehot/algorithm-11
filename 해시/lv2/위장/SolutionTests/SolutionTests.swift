//
//  SolutionTests.swift
//  SolutionTests
//
//  Created by 이동영 on 31/07/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

import XCTest

class SolutionTests: XCTestCase {
    
    func test01() {
        //Given
        let input = [["yellow_hat", "headgear"],
                     ["blue_sunglasses", "eyewear"],
                     ["green_turban", "headgear"]]
        let expected = 5
        //When
        let result = solution(input)
        //Then
        XCTAssertEqual(result, expected)
    }
    
    func test02() {
        //Given
        let input = [["crow_mask", "face"],
                     ["blue_sunglasses", "face"],
                     ["smoky_makeup", "face"]]
        let expected = 3
        //When
        let result = solution(input)
        //Then
        XCTAssertEqual(result, expected)
    }

}
