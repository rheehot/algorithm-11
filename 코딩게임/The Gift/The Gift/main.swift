//
//  main.swift
//  The Gift
//
//  Created by 이동영 on 07/09/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

import Foundation


func solution(_ 인원수: Int,_ 선물가격: Int , _ 보유액: [Int]) -> [Int] {
    guard (보유액.reduce(0) { $0 + $1 }) >= 선물가격 else { return [] }
    
    var 보유액 = 보유액
    var result: [Int] = []
    var 필요한금액 = 선물가격
    var 평균 = 선물가격/인원수
    
    while result.count < 인원수 {
        for (index,price) in 보유액.enumerated() {
            if price <= 평균  {
                result.append(price)
                필요한금액 -= 보유액.remove(at: index)
                평균 = 필요한금액/보유액.count
            }
        }
        if 보유액.reduce(true, { $0 && ($1 > 평균) }) {
            result.append(contentsOf: [Int].init(repeating: 평균, count: 보유액.count))
        }
    }
    let sum = result.reduce(0) { $0 + $1 }
    if sum < 선물가격  {
        result[result.count-1] += 1
    }
    return result
}

