//
//  main.swift
//  가장 먼 노드
//
//  Created by 이동영 on 11/10/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

import Foundation




let n = 6
let  vertex = [[3, 6],
               [4, 3],
               [3, 2],
               [1, 3],
               [1, 2],
               [2, 4],
               [5, 2]]

let v2 = [[1,3],
          [2,3],
          [3,4],
          [4,6],
          [5,6],
          [5,4]]

let v3 = [[1,2],
          [2,4],
          [3,7],
          [4,6],
          [4,5],
          [3,6],
          [2,3]]

func solution(_ n: Int, _ edge: [[Int]]) -> Int {
    var queue = [1]
    var depth = 0
    var visited = [1]
    var count = 1
    var countPerDepth = 0
    repeat {
        let from = queue.removeFirst()
        count -= 1
        
        for i in edge.indices {
            
            if from == edge[i][1] && !visited.contains(edge[i][0]) {
                queue.append(edge[i][0])
                visited.append(edge[i][0])
            }
            if from == edge[i][0] && !visited.contains(edge[i][1]) {
                queue.append(edge[i][1])
                visited.append(edge[i][1])
            }
        }
        if count == 0 {
            depth+=1
            count = queue.count
            countPerDepth = count
        }
        print("depth: \(depth),queue: \(queue)")
    } while visited.count < n
    return countPerDepth
}

print(solution(7, v3))
