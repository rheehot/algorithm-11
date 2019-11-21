//
//  main.swift
//  가장큰수
//
//  Created by 이동영 on 2019/11/21.
//  Copyright © 2019 이동영. All rights reserved.
//

import Foundation

extension Int {
    
    func power(_ n: Int) -> Int {
        var count = n
        var number = 1
        while (count > 0) {
            number*=self
            count-=1
        }
        return number
    }
    
    var countOfDigit: Int {
        var count = 1
        var number = self
        while (number >= 10) {
            number/=10
            count+=1
        }
        return count
    }
    
    func appending(_ n: Int, count: Int) -> Int {
        var count = count < 0 ? count * -1 : count
        var result = self
        while (count > 0) {
            result *= 10
            result += n
            count -= 1
        }
        return result
    }
    
}
func solution(_ numbers:[Int]) -> String {
    
    return numbers
        .sorted{ n1, n2 in
            let d1 = n1.countOfDigit
            let d2 = n2.countOfDigit
            if d1 == d2 {
                return n1 > n2
            } else if (d1 < d2 ){
                let diff = d2 - d1
                let f1 = n1/10.power(d1.countOfDigit)
                let a = n1.appending(f1, count: diff)
                if a == n2  { return true }
                return a > n2
            } else {
                let diff = d1 - d2
                let f2 = n2/10.power(d2.countOfDigit)
                let b = n2.appending(f2, count: diff)
                if b == n1  { return false }
                return n1 > b
            }
    }
        .map { String($0) }
        .reduce("") { $0 + $1 }
}

let result = solution([12,121, 998,99,98,11,10])
// 9999898121211110
print(result)
