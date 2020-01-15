//
//  main.swift
//  배달
//
//  Created by 이동영 on 2020/01/13.
//  Copyright © 2020 이동영. All rights reserved.
//

import Foundation

class Town: Hashable {
    let no: Int
    var roads: [Road] = []
    
    init(_ no: Int) {
        self.no = no
    }
    
    static func == (lhs: Town, rhs: Town) -> Bool {
        return lhs.no == rhs.no
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(no)
    }
}

class Road {
    let start: Town
    let end: Town
    let distance: Int
    
    init(_ start: Town, _ end: Town, _ distance: Int) {
        self.start = start
        self.end = end
        self.distance = distance
    }
}

func solution(_ N: Int, _ road: [[Int]], _ k: Int) -> Int {
    let towns = (1...N).map { Town($0) }
    
    road.forEach {
        let town1 = towns[$0[0]-1]
        let town2 = towns[$0[1]-1]
        let distance = $0[2]
        let road = Road(town1, town2, distance)
        town1.roads.append(road)
        town2.roads.append(road)
    }
    return 0
}


let n = 5
let road = [[1,2,1], [2,3,3], [5,2,2], [1,4,2], [5,3,1], [5,4,2]]
let k = 3
let expected = 4
let result = solution(n, road, k)
print("기댓 값: \(expected) 결과 값: \(result)")

let n2 = 6
let road2 = [[1,2,1], [1,3,2], [2,3,2], [3,4,3], [3,5,2], [3,5,3], [5,6,1]]
let k2 = 4
let expected2 = 4
let result2 = solution(n2, road2, k2)
print("기댓 값: \(expected2) 결과 값: \(result2)")
