//
//  main.swift
//  종이접기
//
//  Created by 이동영 on 2020/01/15.
//  Copyright © 2020 이동영. All rights reserved.
//

import Foundation

func pow(_ a: Int, _ b: Int) -> Int {
    var result = a
    var count = 0
    while b > count {
        result *= a
        count += 1
    }
    return result
}


func solution(_ n: Int) -> [Int] {
    var 접은횟수 = 0
    var answer = [Int]()
    var limit = 1
    while n > 접은횟수 {
        defer { 접은횟수 += 1 }
        
        if answer.isEmpty {
            answer.append(0)
            continue
        }
        
        limit *= 2
        let count = answer.count
        for i in answer.indices {
            let index = count - i - 1
            if index <= limit && index % 2 == 0 {
                answer.insert(1, at: index+1)
                answer.insert(0, at: index)
            }
        }
    }
    
    return answer
}

let n1 = 1
let expected1 = [0]
let result1 = solution(n1)
print("기대 값: \(expected1), 결과 값 \(result1)")

let n2 = 2
let expected2 = [0,0,1]
let result2 = solution(n2)

print("기대 값: \(expected2), 결과 값 \(result2)")

let n3 = 3
let expected3 = [0,0,1,0,0,1,1]
let result3 = solution(n3)

print("기대 값: \(expected3), 결과 값 \(result3)")
