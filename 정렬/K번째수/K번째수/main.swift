//
//  main.swift
//  K번째수
//
//  Created by 이동영 on 07/07/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {

    var result = [Int]()
    for command in commands {
        let start = command[0]
        let end = command[1]
        let k = command[2]
        if start == end { result.append( array[start-1]); continue }
        let range = start-1..<end
        result.append(array[range].sorted(by:<)[k-1])
    }
    return result
}

