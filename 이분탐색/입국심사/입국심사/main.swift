//
//  main.swift
//  입국심사
//
//  Created by 이동영 on 04/09/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

import Foundation

func solution(_ n: Int, _ times: [Int]) -> Int64 {
    var 맡은인원 = [Int](repeating: 0, count: times.count)
    var 시간 = times
    var 대기인원 = n
    
    while 대기인원 > 0 {
        var 예상값들 = [Int]()
        for i in 맡은인원.indices {
            let 예상 = (맡은인원[i]+1) * 시간[i]
            예상값들.append(예상)
        }
        let 최솟값 = 예상값들.min()
        let 최소인덱스 = 예상값들.firstIndex { $0 == 최솟값 }!
        맡은인원[최소인덱스] += 1
        대기인원-=1
    }
    var max = Int.min
    
    for i in 맡은인원.indices {
        let value = 맡은인원[i] * 시간[i]
        max = max < value ? value : max
    }
    return Int64(max)
}

print(solution(3, [7,10,11]))
