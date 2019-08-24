//
//  SolutionTests.swift
//  SolutionTests
//
//  Created by 이동영 on 24/08/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

import XCTest

class SolutionTests: XCTestCase {
    
    func test01 () {
        //Given
        let arr1 = [[1, 4],
                    [3, 2],
                    [4, 1]]
   
        let arr2 = [[3, 3],
                    [3, 3]]
        
        let expected = [[15, 15],
                        [15, 15],
                        [15, 15]]
        
        //When
        let result = solution(arr1, arr2)
        
        //Then
        XCTAssertEqual(result, expected)
        
    }
    
    func test02() {
        //Given
        let arr1 = [[2, 3, 2],
                    [4, 2, 4],
                    [3, 1, 4]]
        
        let arr2 = [[5, 4, 3],
                    [2, 4, 1],
                    [3, 1, 1]]
        
        let expected = [[22, 22, 11],
                        [36, 28, 18],
                        [29, 20, 14]]
        
        //When
        let result = solution(arr1, arr2)
        
        //Then
        XCTAssertEqual(result, expected)
        
    }
}

