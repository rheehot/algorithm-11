//
//  main.swift
//  프린터
//
//  Created by 이동영 on 07/07/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

import Foundation

func solution(_ priorities: [Int], _ location: Int) -> Int {
    var queue = priorities
    var output = [Int]()
    var location = location
    
    while !queue.isEmpty {
        if location == 0 {
            if queue.first! == queue.max()! { return output.count+1 }
            location = queue.count
        }
        let first = queue.removeFirst(); location-=1
        queue.filter { $0 > first }.count > 0 ? queue.append(first) : output.append(first)
    }
    return output.count+1
}
