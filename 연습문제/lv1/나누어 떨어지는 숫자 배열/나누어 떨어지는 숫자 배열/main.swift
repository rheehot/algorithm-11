//
//  main.swift
//  나누어 떨어지는 숫자 배열
//
//  Created by 이동영 on 22/07/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

import Foundation

func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
    let result = arr.filter { $0 % divisor == 0 }.sorted(by: <)
    return result.isEmpty ? [-1] : result
}
