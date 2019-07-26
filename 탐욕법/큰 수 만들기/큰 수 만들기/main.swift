//
//  main.swift
//  큰 수 만들기
//
//  Created by 이동영 on 25/07/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//
import Foundation

func solution(_ number: String, _ k: Int) -> String {
   func deleteOneMax(_ n: String) -> String {
        var number = [[Character]] (repeating: n.map{ $0 }, count: n.count)
        var i = 0
        for (index,_) in number.enumerated() {
            number[index].remove(at: i)
            i+=1
        }
        return number.map { $0.reduce("") { "\($0)\($1)"} }.max()!
    }
    var result: String = number
    
    for _ in 0..<k {
        result = deleteOneMax(result)
    }
    return result
    
}

