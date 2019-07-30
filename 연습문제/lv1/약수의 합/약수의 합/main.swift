//
//  main.swift
//  약수의 합
//
//  Created by 이동영 on 23/07/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

import Foundation

func solution(_ n:Int) -> Int {
    return Array(1...n).filter { n%$0 == 0 }.reduce(0, +)
}
