//
//  main.swift
//  자릿수 더하기
//
//  Created by 이동영 on 14/07/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

import Foundation

func solution(_ n: Int) -> Int {
    return "\(n)".reduce(0){ $0 + $1.wholeNumberValue! }
}
