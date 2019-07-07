//
//  main.swift
//  모의고사
//
//  Created by 이동영 on 07/07/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

import Foundation

// https://programmers.co.kr/learn/courses/30/lessons/42840?language=swift


func solution(_ answers: [Int]) -> [Int] {
    let 수포자1 = [ 1, 2, 3, 4, 5 ]
    let 수포자2 = [ 2, 1, 2, 3, 2, 4, 2, 5 ]
    let 수포자3 = [ 3, 3, 1, 1, 2, 2, 4, 4, 5, 5 ]
    
    var count = [Int : Int]()
    
    for (index, answer) in answers.enumerated() {
        수포자1[index % (수포자1.count)] == answer ? count[1] = (count[1] ?? 0) + 1 : ()
        수포자2[index % (수포자2.count)] == answer ? count[2] = (count[2] ?? 0) + 1 : ()
        수포자3[index % (수포자3.count)] == answer ? count[3] = (count[3] ?? 0) + 1 : ()
    }
    
    let max = count.values.max()!
    
    return count.filter{ $0.value == max }.map { $0.key }.sorted(by: <)
}
