//
//  main.swift
//  예상대진표
//
//  Created by 이동영 on 2019/12/31.
//  Copyright © 2019 이동영. All rights reserved.
//

import Foundation

func solution(_ n: Int, _ playerA: Int, _ playerB: Int) -> Int{
    var round = 1
    var playerA = playerA
    var playerB = playerB
    while abs(playerB-playerA) != 1 && min(playerB, playerA)%2 != 1 {
        playerA = win(playerA)
        playerB = win(playerB)
        round += 1
    }
    return round
}

func win(_ index: Int) -> Int {
    return (index+1)/2
}


let N = 8
let A = 4
let B = 7

let round = solution(N, A, B)
print(round)
