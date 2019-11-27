//
//  main.swift
//  N으로 표현
//
//  Created by 이동영 on 20/09/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

import Foundation

var start = false
var dp = [Int: Int]()

func solution(_ N: Int, _ number: Int) -> Int {
    
    
    dp[N] = 1
    
    let n1 = number/N
    let n2 = number-N
    let n3 = number-N < 0 ? 1 : number-N
    let n4 = number/11
    let n5 = number*N
    
    let results = Set([n1,n2,n3,n4,n5]).map { get(N, $0) }.min()! + 1
    dp[number] = results
    
    return results
}

func get(_ N: Int, _ index: Int) -> Int {
    if let target = dp[index] {
        return target
    } else {
        dp[index] = solution(N, index)
        return dp[index]!
    }
}


//N    number    return
let n1 = 5
let number1 = 12
let result1 = 4

let n2 = 2
let number2 = 11
let result2 = 3

print(solution(n1, number1))
