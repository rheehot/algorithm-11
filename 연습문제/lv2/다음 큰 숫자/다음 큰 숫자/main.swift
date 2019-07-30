//
//  main.swift
//  다음 큰 숫자
//
//  Created by 이동영 on 30/07/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

import Foundation
typealias Binary =  [Bool]

func solution(_ n:Int) -> Int {
    let bi = binary(from: n)
    var result = n
    
    while(true) {
        result += 1
        if countOfOne(bi) == countOfOne(binary(from: result)) {
            break
        }
    }
    
    return result
}

func binary(from n: Int) -> Binary {
    var remainder = n
    var binary = [Bool]()
    while remainder != 0 {
        binary.append(remainder%2 == 1 ? true : false )
        remainder = remainder/2
    }
    return binary.reversed()
}

func countOfOne(_ bi : Binary) -> Int {
    return bi.reduce(0) { $1 ? $0 + 1 : $0 }
}

