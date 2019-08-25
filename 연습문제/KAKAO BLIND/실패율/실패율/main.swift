//
//  main.swift
//  실패율
//
//  Created by 이동영 on 25/08/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//
import Foundation

func solution(_ N: Int, _ stages: [Int]) -> [Int] {
    var ratios  = [Ratio]()
    
    for i in 1...N+1 {
        ratios.append(Ratio.init(index: i, stop: 0, total: 0))
    }
    
    stages.forEach { stage in
        for i in 1...stage {
            ratios[i-1].total = ratios[i-1].total + 1
        }
        ratios[stage-1].stop = ratios[stage-1].stop + 1
    }
    ratios.removeLast()
    
    return ratios.sorted(by: {
        if $0.value == $1.value {
            return $0.index < $1.index
        }
        return $0.value > $1.value
    }).map { $0.index }
}

struct Ratio {
    var index: Int
    var stop:Int = 0
    var total:Int = 0
    
    var value: Double {
        return Double(stop)/Double(total)
    }
}

//    [3,4,2,1,5]
print(solution(5, [2, 1, 2, 6, 2, 4, 3, 3]))
