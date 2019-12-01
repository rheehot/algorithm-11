//
//  main.swift
//  멀리뛰기
//
//  Created by 이동영 on 2019/11/30.
//  Copyright © 2019 이동영. All rights reserved.
//

import Foundation

var memo = [Int](repeating: 0, count: 2000)

func solution(_ n:Int) -> Int {
    
    memo[1] = 1
    memo[2] = 2
    if n < 3 { return memo[n] }
    for i in 3...n {
        memo[i] = memo[i-1] + memo[i-2]
    }
    return memo[n]
}

