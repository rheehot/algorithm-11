//
//  main.swift
//  무지의 먹방라이브
//
//  Created by 이동영 on 26/08/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

import Foundation

func solution(_ food_times:[Int], _ k: Int64) -> Int {
    var sec = 0
    var index = sec
    var food_times = food_times
    while(sec <= k) {
        index = (index)%food_times.count
        if food_times[index] > 0 {
            food_times[index]-=1
            index+=1
            sec+=1
        }
        else {
            index+=1
            if (food_times.reduce(0){ $0 + $1 } == 0) { return -1 }
            continue
        }
    }
    return index
}
