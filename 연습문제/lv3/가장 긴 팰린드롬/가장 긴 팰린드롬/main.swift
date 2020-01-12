//
//  main.swift
//  가장 긴 팰린드롬
//
//  Created by 이동영 on 2020/01/12.
//  Copyright © 2020 이동영. All rights reserved.
//

import Foundation

typealias Center = (start: Int, end: Int)

func solution(_ s: String) -> Int {
    let characters = s.map { $0 as Character }
    var centers: [Center] = []
    var max = 1
    
    for index in characters.indices {
        guard index > 0 && index < characters.count-1 else { continue }
        
        let before = index-1
        var current = index
        var next = index+1
        var count = 0
        
        while true {
            guard next < characters.count else { break }
            let beforeCharacter = characters[before]
            let currentCharacter = characters[current]
            let nextCharacter = characters[next]
            if count > 0 && next == characters.count-1  {
                centers.append(Center(start: current-count, end: current))
                break
            } else if currentCharacter != nextCharacter && (beforeCharacter == nextCharacter)  {
                centers.append(Center(start: current-count, end: current))
                break
            } else if currentCharacter == nextCharacter {
                count += 1
                next += 1
                current += 1
            } else if beforeCharacter == currentCharacter {
                count += 1
                next += 1
                current += 1
            } else { break }
        }
    }
    for center in centers {
        let diff = center.end - center.start
        if max < diff { max = diff+1 }
        var count = -1 + diff
        for i in 0...min(characters.count - 1 - center.end, center.start) {
            if characters[center.start - i] == characters[center.end + i] {
                count += 2
            } else { break }
        }
        if max < count { max = count }
    }
    
    return max
}

//func solution(_ s: String) -> Int {
//    let chars = s.map { $0 as Character }
//    var centerIndices: [Int] = []
//    var max = 1
//
//    for index in chars.indices where index > 0 && index < chars.count-1 {
//        if chars[index-1] == chars[index+1] {
//            centerIndices.append(index)
//        }
//    }
//    print(centerIndices)
//    for centerIndex in centerIndices {
//        print("횟수", min(chars.count - 1 - centerIndex, centerIndex))
//        var count = -1
//        for i in 0...min(chars.count - 1 - centerIndex, centerIndex) {
//            if chars[centerIndex - i] == chars[centerIndex + i] {
//                count += 2
//            } else { break }
//        }
//        if max < count { max = count }
//        print(count)
//    }
//
//    return max
//}


let test0 = "baaaa"
let expect0 = 4
print(expect0 == solution(test0))

let test1 = "zzzzaa"
let expect1 = 4
print(solution(test1))
print(expect1 == solution(test1))

let test2 = "abacde"
let expect2 = 3
print(expect2 == solution(test2))

let test3 = "abacaba"
let expect3 = 7
print(expect3 == solution(test3))

let test4 = "abacabaaa"
let expect4 = 7
print(expect4 == solution(test4))

let test5 = "abbacc"
let expect5 = 4
print(expect5 == solution(test5))

