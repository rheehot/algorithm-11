//
//  SolutionTests.swift
//  SolutionTests
//
//  Created by 이동영 on 01/08/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

import XCTest

class SolutionTests: XCTestCase {
    
    func test01(){
        //Given
        let bridge_length = 2
        let weight = 10
        let truck_weights = [7,4,5,6]
        let exptected = 8
        //When
        let result = solution(bridge_length, weight, truck_weights)
        //Then
        XCTAssertEqual(result, exptected)
    }
    
    func test02(){
        //Given
        let bridge_length = 100
        let weight = 100
        let truck_weights = [10]
        let exptected = 101
        //When
        let result = solution(bridge_length, weight, truck_weights)
        //Then
        XCTAssertEqual(result, exptected)
    }
    
    func test03(){
        //Given
        let bridge_length = 100
        let weight = 100
        let truck_weights = [10,10,10,10,10,10,10,10,10,10]
        let exptected = 110
        //When
        let result = solution(bridge_length, weight, truck_weights)
        //Then
        XCTAssertEqual(result, exptected)
    }
}
