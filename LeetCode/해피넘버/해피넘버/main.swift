//
//  main.swift
//  해피넘버
//
//  Created by 이동영 on 2020/01/23.
//  Copyright © 2020 이동영. All rights reserved.
//

import Foundation

class Solution {
    
    func isHappy(_ n: Int) -> Bool {
        var n = n
        if n == 1 { return true }
        var sums = Set<Int>([n])
        var sum = 0
        while (sum != 1) {
            let numbers = String(n).map { $0.wholeNumberValue! }

            sum = 0
            for number in numbers {
                sum += number * number
            }
            
            if sums.contains(sum) {
                return false
            }
            sums.insert(sum)
            n = sum
        }
        
        return true
    }
    
}
let s = Solution()

let n = 19

print(s.isHappy(n))


print(s.isHappy(1))
