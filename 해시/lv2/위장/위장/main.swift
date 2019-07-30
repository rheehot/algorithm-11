//
//  main.swift
//  위장
//
//  Created by 이동영 on 31/07/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

import Foundation

func solution(_ clothes:[[String]]) -> Int {
    var items = [String : Int]()
    clothes.forEach{ items[$0[1]] = ( items[$0[1]] ?? 0 ) + 1 }
    return items.reduce(1) { $0 * ($1.value+1) }-1
}
