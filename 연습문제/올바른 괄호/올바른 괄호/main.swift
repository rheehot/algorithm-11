//
//  main.swift
//  올바른 괄호
//
//  Created by 이동영 on 27/07/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

import Foundation

func solution(_ s:String) -> Bool
{
    var stack = [Character]()
    for c in s {
        if c == "(" { stack.append(c) }
        if c == ")" {
            guard let last = stack.last else {
                return false
            }
            stack.popLast()
        }
    }
    return stack.isEmpty
}

