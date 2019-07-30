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
    var max = 0
    for (i, width) in board.enumerated() {
        for (j, _) in width.enumerated() {
            var size = max
            while verify(rect: board, x: i, y: j, size: size) {
                size += 1
            }
            max = max > size ? max : size
            size = max
        }
    }
    return max * max
}

func verify(rect: [[Int]], x: Int, y: Int , size: Int) -> Bool {
    let width = x...x+size
    let height = y...y+size
    if height.max()! >= rect[0].count || width.max()! >= rect.count { return false }
    for w in width {
        for h in height {
            if (rect[w][h] == 0) { return false }
        }
    }
    return true
}

