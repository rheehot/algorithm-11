//
//  main.swift
//  땅따먹기
//
//  Created by 이동영 on 2019/11/13.
//  Copyright © 2019 이동영. All rights reserved.
//

import Foundation

extension Array where Element == Int {
    var getMaxIndex: Int? {
        guard let max = self.max() else { return nil }
        
        return self.firstIndex(of: max)
    }
}


// https://programmers.co.kr/learn/courses/30/lessons/12913
func solution(_ land: [[Int]]) -> Int {
    var answer = 0
    var existIndex: Int? = nil
    var sum = 0
    
    for y in land.indices {
        var line = land[y]
        guard let maxIndex = line.getMaxIndex else { continue }
        line.remove(at: maxIndex)
        guard let optimumIndex = maxIndex != existIndex ? maxIndex : line.getMaxIndex else { continue }
        existIndex = optimumIndex
        sum += land[y][optimumIndex]
    }
    
    return sum
}

let land = [[1,2,3,5],
            [5,6,7,8],
            [4,3,2,1]]

let result = solution(land)

print(result)



