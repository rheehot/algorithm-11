//
//  main.swift
//  다리를 지나는 트럭
//
//  Created by 이동영 on 01/08/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

import Foundation

func solution(_ 다리길이: Int, _ 무게제한: Int, _ 트럭들: [Int]) -> Int {
    var 진행시간 = 0
    var 기다리는트럭들 = 트럭들
    var 다리위의트럭들 = [Int]()
    var 진행거리 = [Int]()
    
    let 출발: (Int) -> ()  = { i in 다리위의트럭들.append(i) ; 진행거리.append(1) }
    
    let 다리위무게의합 = { 다리위의트럭들.reduce(0) { $0 + $1 } }
    
    let 도착 = {
        let first = 진행거리.first ?? 0
        if first > 다리길이 { 다리위의트럭들.removeFirst(); 진행거리.removeFirst()  }
    }
    
    let 진행 = { 진행거리 = 진행거리.map { $0 + 1 } ; 진행시간 += 1 }
   
    while !다리위의트럭들.isEmpty || !기다리는트럭들.isEmpty {
        진행()
        도착()
        if let first = 기다리는트럭들.first  {
            if 다리위무게의합() + first <= 무게제한 {
                출발(기다리는트럭들.removeFirst())
            }
        }
    }
    
    return 진행시간
}


