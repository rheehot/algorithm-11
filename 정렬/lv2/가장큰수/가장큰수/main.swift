//
//  main.swift
//  가장큰수
//
//  Created by 이동영 on 2019/11/21.
//  Copyright © 2019 이동영. All rights reserved.
//

import Foundation
import Foundation

func solution(_ numbers:[Int]) -> String {
    return numbers
        .map { String($0) }
        .sorted { Int($0 + $1)! > Int($1 + $0)! }
        .reduce("") {
            if $0 == "0" && $1 == "0" { return "0" }
            else if $0 == "0" && $1 != "0" { return $1 }
            else { return $0 + $1 }
        }
}
let result = solution([99, 998, 98, 121, 11, 34, 90]) /// 99998983412111
print(result)

let result2 = solution([21,212]) /// 99998983412111
print(result2)


print(compare("3", "34") , false)
print(compare("33", "35"), false)
print(compare("3", "4") , true)
print(compare("33", "3"), false)

print(compare("99", "98"), false)
