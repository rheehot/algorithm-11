//
//  main.swift
//  큰 수 만들기
//
//  Created by 이동영 on 25/07/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//
import Foundation

func solution(_ number: String, _ k: Int) -> String {
    var numbers = number.compactMap { $0.wholeNumberValue }

    var count: Int { return numbers.count }
    for _ in 0..<k {
        for i in numbers.indices {
            if numbers[i] == 0 {
                numbers.remove(at: i)
                break
            }
            if i+1 < count {
                if numbers[i] < numbers[i+1]  {
                    numbers.remove(at: i)
                    break
                }
            }
        }
    }
    
    return numbers.reduce("") { $0 + "\($1)" }
}
let r = solution("1010", 2)
print(r)
