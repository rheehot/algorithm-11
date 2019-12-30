//
//  main.swift
//  땅따먹기
//
//  Created by 이동영 on 2019/11/13.
//  Copyright © 2019 이동영. All rights reserved.
//

import Foundation

// https://programmers.co.kr/learn/courses/30/lessons/12913

struct Land {
    let index: Int
    let value: Int
}

extension Array where Element == Int {
    func next(current: Land) -> Land {
        var max = Int.min
        var maxIndex = 0
        for index in self.indices {
            guard current.index != index else { continue }
            
            if max < self[index] {
                max = self[index]
                maxIndex = index
            }
        }
        return Land(index: maxIndex, value: max)
    }
}

func solution(_ land: [[Int]]) -> Int {
    var land = land
    var maxs: [Land] = []
    var subs: [Land] = []
    
    var maxIndex = 0
    var secondIndex = 0
    
    let first = land.removeFirst()
    for index in first.indices {
        if first[index] > first[maxIndex] {
            secondIndex = maxIndex
            maxIndex = index
        }
    }
    maxs.append(Land(index: maxIndex, value: first[maxIndex]))
    subs.append(Land(index: secondIndex, value: first[secondIndex]))
    
    for y in land.indices {
        maxs.append(land[y].next(current: maxs.last!))
        subs.append(land[y].next(current: subs.last!))
    }
    return max(maxs.reduce(0) { $0 + $1.value }, subs.reduce(0) { $0 + $1.value })
}

let land = [[1,2,3,5],
            [5,6,7,8],
            [4,3,2,1]]

let result = solution(land)

print(result)



