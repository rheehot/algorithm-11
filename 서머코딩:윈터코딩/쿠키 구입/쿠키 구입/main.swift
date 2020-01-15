//
//  main.swift
//  쿠키 구입
//
//  Created by 이동영 on 2020/01/15.
//  Copyright © 2020 이동영. All rights reserved.
//
import Foundation

var maxValue = 0

func solution(_ cookie: [Int]) -> Int {
    let sum = cookie.reduce(0, +)
    guard cookie.count != 1 else { return 0}
    if sum % 2 == 0 {
        var continueValue = 0
        for i in cookie {
            continueValue += i
            if continueValue == sum/2 {
                return continueValue
            }
        }
    }
    var cookie1 = cookie
    var cookie2 = cookie
    let first = cookie1.removeFirst()
    let last = cookie2.removeLast()
    return max(solution2(&cookie1, sum-first), solution2(&cookie2, sum-last))
}

func solution2(_ cookie: inout [Int], _  sum: Int) -> Int {
    guard cookie.count != 1 else { return 0 }
    
    if sum / 2 < maxValue { return 0 }
    if sum % 2 == 0 {
        var continueValue = 0
        for i in cookie {
            continueValue += i
            if continueValue == sum/2 {
                if continueValue > maxValue { maxValue = continueValue }
                return continueValue
            } else if continueValue > sum/2 {
                break
            }
        }
    }
    var cookie1 = cookie
    var cookie2 = cookie
    let first = cookie1.removeFirst()
    let last = cookie2.removeLast()
    return max(solution2(&cookie1, sum-first), solution2(&cookie2, sum-last))
}

let cookie1 = [1,1,2,3]
let expected1 = 3
let result1 = solution(cookie1)
print("기대값: \(expected1), 결과값: \(result1)")

let cookie2 = [1,2,4,5]
let expected2 = 0
let result2 = solution(cookie2)
print("기대값: \(expected2), 결과값: \(result2)")

