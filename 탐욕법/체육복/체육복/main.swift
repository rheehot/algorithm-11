//
//  main.swift
//  체육복
//
//  Created by 이동영 on 07/07/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

import Foundation

// https://programmers.co.kr/learn/courses/30/lessons/42862

func solution(_ n: Int, _ lost: [Int], _ reserve: [Int]) -> Int {
    var reserve2 = reserve.filter{ !lost.contains($0) }
    let lost2 = lost.filter { !reserve.contains($0) }
    var result = n - lost2.count
    
    for v in lost2 {
        if let index = reserve2.firstIndex(of: v-1) {
            result+=1
            reserve2.remove(at: index)
            continue
        }
        if let index = reserve2.firstIndex(of: v+1) {
            result+=1
            reserve2.remove(at: index)
            continue
        }
    }
    return result
}

