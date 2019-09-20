//
//  main.swift
//  2*N 타일링
//
//  Created by 이동영 on 21/09/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

import Foundation

var memoization = Array<Int>.init(repeating: 0, count: 10001)

func solution(n: Int) -I> Int {
    if n == 1 { return 1 }
    if n == 2 { return 2 }
    if memoization[n] != 0 {
        return memoization[n]
    }
    memoization[n] = (solution(n: n-1)+solution(n: n-2))
    return memoization[n]
}

print(solution(n: 9))
