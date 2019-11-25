//
//  main.swift
//  가장큰수
//
//  Created by 이동영 on 2019/11/21.
//  Copyright © 2019 이동영. All rights reserved.
//

import Foundation

extension Int {
    
    var countOfDigit: Int {
        var num = self
        var count = 1
        
        while num >= 10 {
            num/=10
            count+=1
        }
        return count
    }
    
    func pow(_ b: Int) -> Int {
        var count = b
        var result = 1
        
        while count != 0 {
            count -= 1
            result*=self
        }
        return result
    }
    
    var headNumber: Int {
        return self/10.pow(countOfDigit-1)
    }
}

func shiftlLeft (_ num: Int) -> Int {
    if num.countOfDigit == 1 { return num-1 }
    return num - num.headNumber * 10.pow(num.countOfDigit-1)
}

func solution(_ numbers:[Int]) -> String {
    return numbers.sorted { a, b in
        var a = a
        var b = b
        while a.countOfDigit != 1 || b.countOfDigit != 1 {
            if a.headNumber != b.headNumber { return a.headNumber > b.headNumber }
            a = shiftlLeft(a)
            b = shiftlLeft(b)
        }
        return a.headNumber > b.headNumber
    }.reduce("") { $0 + "\($1)" }
}

let result = solution([99,998,98, 121, 11])
print(result)
