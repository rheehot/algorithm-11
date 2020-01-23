//
//  main.swift
//  섬 연결하기
//
//  Created by 이동영 on 2020/01/22.
//  Copyright © 2020 이동영. All rights reserved.
//

import Foundation

class Land: Equatable, Hashable {
    
    let no: Int
    
    init(no: Int) {
        self.no = no
    }
    
    static func == (lhs: Land, rhs: Land) -> Bool {
        return lhs.no == rhs.no
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(no)
    }
    
}

class Bridge {
    let lands: Set<Land>
    let cost: Int
    
    init(lands: [Land], cost: Int) {
        self.lands = Set<Land>(lands)
        self.cost = cost
    }
    
}

func solution(_ n: Int, _ costs: [[Int]]) -> Int {
    
    var lands = (0...n).map { Land(no: $0) }
    let bridges = costs.map {
        Bridge(lands: [lands[$0[0]], lands[$0[1]]], cost: $0[2])
    }
    
    
    
    return 0
}
