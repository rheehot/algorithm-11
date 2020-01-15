//
//  main.swift
//  점프와 순간이동
//
//  Created by 이동영 on 2020/01/15.
//  Copyright © 2020 이동영. All rights reserved.
//

import Foundation

var 칸별횟수 = [1: 1, 2: 1]

func solution(_ n: Int) -> Int {
    if n == 1 { return 1 }
    if n % 2 == 0 { return solution(n/2) }
    return solution(n/2) + 1
}

print(solution(5000))
