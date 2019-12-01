//
//  main.swift
//  행렬의 곱셈
//
//  Created by 이동영 on 24/08/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

import Foundation

func solution(_ arr1: [[Int]], _ arr2: [[Int]]) -> [[Int]] {
    var result: [[Int]] = []
    
    var rowOffset = 0
    var columnOffset = 0
    
    var arr: [Int] = []
    
    for row in arr1.indices {
        arr = []
        var v = 0
        for count in arr2.indices {
            for column in arr1[row].indices {
                let value = arr1[row][column] * arr2[column - columnOffset][row - rowOffset + count]
                v += value
                columnOffset += 1
            }
            arr.append(v)
            v = 0
            columnOffset = 0
        }
        rowOffset += 1
        result.append(arr)
    }
    return result
}
let arr1 = [[1, 4],
            [3, 2],
            [4, 1]]

let arr2 = [[3, 3],
            [3, 3]]
//[[15, 15], [15, 15], [15, 15]]
let r = solution(arr1, arr2)
print(r)
