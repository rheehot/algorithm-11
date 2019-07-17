//
//  main.swift
//  소수 찾기
//
//  Created by 이동영 on 16/07/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

import Foundation
func solution4(_ n:Int) -> Int {
    return Array(1...n).filter{ n in Array(1...n).filter{ n%$0 == 0 }.count  == 2 }.count
}

func solution2(_ n:Int) -> Int {
    return Array(1...n).filter{ n in Array(1...n).filter{ n%$0 == 0 }.count  == 2 }.count
}
func solution(_ n: Int) -> Int {
    var elements  = Array(2...n-1)
    var factors = [Int]()
    while let e = elements.first {
        factors.append(e)
        elements.removeAll{ $0%e == 0 }
    }
    return factors.count
}


