//
//  main.swift
//  카펫
//
//  Created by 이동영 on 10/10/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

import Foundation


func solution(_ brown: Int, _ red: Int) -> [Int] {
    let total = red + brown
    let iu  = Int(sqrt(Double(total)))
    let max = Array.init(1...iu)
    let m = max
        .map {
        h -> Int in
        if ((h-2) * ((total/(h))-2) == red) && (total % h == 0){
            return h
        }
        return 1
    }
    
    return [total/(m.max()!), m.max()! ]
}
