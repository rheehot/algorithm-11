//
//  main.swift
//  가장 큰 정사각형 찾기
//
//  Created by 이동영 on 28/07/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

import Foundation

func solution(_ board:[[Int]]) -> Int
{
    var areas = [Int]()
    
    for (i, width) in board.enumerated() {
        for (j, _) in width.enumerated() {
            var size = 0
            while verify(rect: board, x: i, y: j, size: size) {
                size += 1
            }
            areas.append(size*size)
            size = 0
        }
    }
    return areas.max()!
}

func verify(rect: [[Int]], x: Int, y: Int , size: Int) -> Bool {
    let width = x...x+size
    let height = y...y+size
    var isPassible = true
    
    for w in width {
        for h in height {
            if height.max()! >= rect[0].count || width.max()! >= rect.count  { return false }
            isPassible = isPassible && (rect[w][h] == 1)
        }
    }
    return isPassible
}

