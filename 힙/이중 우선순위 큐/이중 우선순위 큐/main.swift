//
//  main.swift
//  이중 우선순위 큐
//
//  Created by 이동영 on 2020/01/13.
//  Copyright © 2020 이동영. All rights reserved.
//

import Foundation

func solution(_ operations: [String]) -> [Int] {
    var array = [Int]()
    
    operations.forEach {
        defer { array.sort(by: >) }
        let operation = $0.split(separator: " ")
        let command = operation.first!
        let value = Int(operation.last!)!
        switch command {
        case "I": array.append(value)
        case "D":
            if array.isEmpty { break }
            if value == -1 { _ = array.popLast() }
            else { _ = array.removeFirst() }
        default: ()
        }
    }
    
    return array.isEmpty ? [0, 0] : [array.first!, array.last!]
}


let operations1 = ["I 16", "D 1"]
let expected1 = [0,0]
let result1 = solution(operations1)
print("기댓 값: \(expected1) 결과 값: \(result1)")


let operations2 = ["I 7", "I 5", "I -5", "D -1"]
let expected2 = [7,5]
let result2 = solution(operations2)
print("기댓 값: \(expected2) 결과 값: \(result2)")
