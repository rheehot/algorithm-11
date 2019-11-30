//
//  main.swift
//  N개의 최소공배수
//
//  Created by 이동영 on 2019/11/30.
//  Copyright © 2019 이동영. All rights reserved.
//

import Foundation

func gcd(_ a: Int, _ b: Int) -> Int {
    var a = a
    var b = b
    while b != 0 {
        let r = a%b
        a = b
        b = r
    }
    return a
}

func lcm(_ a: Int, _ b: Int) -> Int {
    let n = gcd(a,b)
    return a * b / n
}

func solution(_ arr: [Int]) -> Int {
    
    return arr.reduce(1) { lcm($0,$1) }
}


