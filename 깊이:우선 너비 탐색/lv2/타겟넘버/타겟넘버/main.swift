//
//  main.swift
//  타겟넘버
//
//  Created by 이동영 on 14/08/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

import Foundation

func solution(_ numbers: [Int], _ target: Int) -> Int {
    var operaters = add([[true],[false]], numbers.count)
    var results = [Int]()
    while let op = operaters.popLast() {
        var opCount = -1
        results.append(
            numbers
                .reduce(0){ opCount += 1; return op[opCount] ? $0 + $1 : $0 - $1  }
        )
    }
    
    return results.filter { $0 == target}.count
}

func add(_ arr: [[Bool]], _ num: Int) -> [[Bool]] {
    var arr = arr
    var result = [[Bool]]()
    while let bools = arr.popLast() {
        var trueBools = bools
        trueBools.append(true)
        var falseBools = bools
        falseBools.append(false)
        result.append(trueBools)
        result.append(falseBools)
    }
    if (result[0].count == num) { return result }
    return add(result,num)
}

print(solution([1,1,1,1,1], 3))
