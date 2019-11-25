//
//  main.swift
//  탑
//
//  Created by 이동영 on 2019/11/25.
//  Copyright © 2019 이동영. All rights reserved.
//

import Foundation

func solution(_ heights: [Int]) -> [Int] {
    var result = [Int]()
    
    for i in heights.indices {
        let before = result.count
        var stack = heights[0...i]
        let target = heights[i]
        var num = i
        
        while let tower = stack.popLast() {
            if target < tower {
                result.append(num + 1)
                break
            }
            num -= 1
        }
        
        if before == result.count {
            result.append(0)
        }
        
    }
    return result
}

let heights = [6,9,5,7,4]

let result = [0,0,2,2,4]

//let heights = [3,9,9,3,5,7,2]
//let result [0,0,0,3,3,3,6]

//let heights = [1,5,3,6,7,6,5]
//let result [0,0,2,0,0,5,6]


print(solution(heights))
