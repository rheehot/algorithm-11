//
//  main.swift
//  숫자게임
//
//  Created by 이동영 on 2020/01/13.
//  Copyright © 2020 이동영. All rights reserved.
//

import Foundation

enum Results {
    case win
    case draw
    case lose
}

extension Int {
    func battle(_ a: Int) -> Results {
        let b = self
        if b == a { return .draw }
        else if b > a { return .win }
        else { return .lose }
    }
}

func solution(_ a: [Int], _ b: [Int]) -> Int {
    let a = a.sorted(by: <)
    let b = b.sorted(by: <)
    var score = 0
    var indexA = a.count-1
    var indexB = b.count-1
    
    while indexB > -1 && indexA > -1 {
        let scoreA = a[indexA]
        let scoreB = b[indexB]
        let result = scoreB.battle(scoreA)
        
        switch result {
        case .win:
            score += 1
            indexA -= 1
            indexB -= 1
        case .draw:
            indexA -= 1
        case .lose:
            indexA -= 1
        }
    }
    
    return score
}


let a1 = [5,1,3,7]
let b1 = [2,2,6,8]
let expected1 = 3
let result1 = solution(a1, b1)
print("예상 값: \(expected1) , 결과 값은 \(result1)")

let a2 = [2,2,2,2]
let b2 = [1,1,1,1]
let expected2 = 0

let result2 = solution(a2, b2)
print("예상 값: \(expected2) , 결과 값은 \(result2)")
