//
//  main.swift
//  하샤드 수
//
//  Created by 이동영 on 2020/01/16.
//  Copyright © 2020 이동영. All rights reserved.
//

import Foundation

func solution(_ x: Int) -> Bool {
    let sum = String(x)
        .compactMap { $0.wholeNumberValue }
        .reduce(0, +)
    return x%sum == 0
}
