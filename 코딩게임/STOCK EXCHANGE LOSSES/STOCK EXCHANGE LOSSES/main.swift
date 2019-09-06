//
//  main.swift
//  STOCK EXCHANGE LOSSES
//
//  Created by 이동영 on 07/09/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

import Foundation

func solution(_ n: Int, _ prices: String) -> Int {
    let prices = prices.split(separator: " ").map { Int($0)! }
    
    var 구매가 = prices.first!
    var 차액 = 0
    
    for 현재가 in prices {
        if 구매가 < 현재가 {
            구매가 = 현재가
        }
        else if 구매가 > 현재가 {
            차액 = min((구매가 - 현재가)*(-1), 차액)
        }
    }
    return 차액
}


print(solution(6, "3 2 4 2 1 5"))
