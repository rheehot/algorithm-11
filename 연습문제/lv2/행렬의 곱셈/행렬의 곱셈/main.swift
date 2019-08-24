//
//  main.swift
//  행렬의 곱셈
//
//  Created by 이동영 on 24/08/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

import Foundation

func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    var index = 0
    var result = [[Int]]()
    for i in 0..<arr1.count {
        result.append([])
        var k = 0
        for _ in 0..<arr1[0].count {
            for j in 0..<arr1[i].count {
                k += arr1[i][j] * arr2[j][index]
            }
            result[i].append(k)
            index = (index+1)%arr1[0].count
            k = 0
        }
        
    }
    return result
}
