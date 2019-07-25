//
//  main.swift
//  기능개발
//
//  Created by 이동영 on 25/07/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

import Foundation

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    
    var progresses = progresses
    var speeds = speeds
    var result = [Int]()
    
    let working = {
        for index in 0..<progresses.count {
            progresses[index] += speeds[index]
        }
    }
    
    let release = {
        var count = 0
        var indexs = [Int]()
        for index in 0..<progresses.count {
            if progresses[index] >= 100 {
                indexs.append(index)
                count+=1
            } else {
                break
            }
        }
        indexs.reversed().forEach{
            _ = progresses.remove(at: $0)
            _ = speeds.remove(at: $0)
        }
        indexs = []
        result.append(count)
    }
    
    while (!progresses.isEmpty) {
        working()
        release()
    }
    
    return result.filter{ $0 != 0 }
}
