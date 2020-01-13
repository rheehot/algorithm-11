//
//  main.swift
//  기지국 설치
//
//  Created by 이동영 on 2020/01/12.
//  Copyright © 2020 이동영. All rights reserved.
//

import Foundation

//func solution(_ n: Int, _ stations: [Int], _ w: Int) -> Int {
//    var apartments = [Bool](repeating: false, count: n)
//
//    stations.forEach { station in
//        (station-w-1...station+w-1).forEach { receiver in
//            guard receiver >= 0 && receiver < apartments.count else { return }
//            apartments[receiver] = true
//        }
//    }
//
//    var arr = stations.reduce(into: [Int]()) {
//        $0 += [$1-w-1...$1+w-1]
//    }
//    var apartments = [Bool]()
//
//    for i in 0..<n {
//
//    }
//
//    var count = 0
//    var current = 0
//    while current < apartments.count-1 {
//        if apartments[current] {
//            current += 1
//            continue
//        } else {
//            count += 1
//            current += 2*w+1
//        }
//    }
//    //    for index in apartments.indices where apartments[index] == false {
//    //        (index...index+2*w).forEach {
//    //            guard $0 < apartments.count else { return }
//    //            apartments[$0] = true
//    //        }
//    //        count += 1
//    //        print(apartments)
//    //    }
//
//    return count
//}


func solution(_ n: Int, _ stations: [Int], _ w: Int) -> Int {
    var current = 0
    var start = 0
    var end = 0
    
    var index = 0 {
        didSet {
            guard index < stations.count else { return }
            start = max(stations[index] - w - 1, 0)
            end = min(stations[index] + w - 1, n - 1)
        }
    }
    index = 0
    
    var count = 0
    
    while current < n {
        if start <= current && current <= end {
            current += 1
        } else if current < start || index == stations.count {
            current += 2 * w + 1
            count += 1
        } else {
            index += 1
        }
    }
    return count
}



let n1 = 11
let stations1 = [4, 11]
let width1 = 1
let expected1 = 3
print(solution(n1, stations1, width1))
print(solution(n1, stations1, width1) == expected1)

let n2 = 16
let stations2 = [9]
let width2 = 2
let expected2 = 3
//print(solution(n2, stations2, width2))
print(solution(n2, stations2, width2) == expected2)

