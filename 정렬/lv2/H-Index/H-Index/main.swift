//
//  main.swift
//  H-Index
//
//  Created by 이동영 on 2019/11/28.
//  Copyright © 2019 이동영. All rights reserved.
//

import Foundation

func solution(_ citations: [Int]) -> Int {
    var hs = [Int]()
    
    citations.forEach {
        numOfRefer in
        let c = citations.filter { numOfRefer <= $0 }.count
        hs.append(min(c, numOfRefer))
    }
    return hs.max() ?? 0
}


// 인용된 최대 수 == 인용된 최대수가 같은 작품 수
let citations1 = [3, 0, 6, 1, 5]
let result1 = 3
let citations2 = [22, 42]
let result2 = 2
print(solution(citations1))
