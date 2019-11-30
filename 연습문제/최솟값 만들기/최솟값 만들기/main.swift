//
//  main.swift
//  최솟값 만들기
//
//  Created by 이동영 on 2019/11/30.
//  Copyright © 2019 이동영. All rights reserved.
//
import Foundation

func solution(_ A: [Int], _ B: [Int]) -> Int {
    var result = 0
    var arr1 = A.sorted()
    var arr2 = B
    while let e = arr1.popLast() {
        let min = getMin(e, target: &arr2)
        result += min
    }
    
    return result
}

func getMin(_ a: Int, target: inout [Int]) -> Int {
    var minValue = Int.max
    var minIndex = -1
    for i in target.indices {
        if minValue > target[i] * a {
            minValue = target[i] * a
            minIndex = i
        }
    }
    target.remove(at: minIndex)
    return minValue
}

let a1 = [1, 4, 2]
let b1 = [5, 4, 4]
print(solution(a1, b1))
let a2 = [1,2]
let b2 = [3,4]

print(solution(a2, b2))
