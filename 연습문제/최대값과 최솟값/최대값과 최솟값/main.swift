//
//  main.swift
//  최대값과 최솟값
//
//  Created by 이동영 on 24/07/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

import Foundation

func solution(_ s:String) -> String {
    let numbers = s.split( separator: " ").map{ Int($0)! }
    return "\(numbers.min()!) \(numbers.max()!)"
}
