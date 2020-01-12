//
//  main.swift
//  짝지어 제거하기
//
//  Created by 이동영 on 2019/12/31.
//  Copyright © 2019 이동영. All rights reserved.
//
import Foundation

func solution(_ string: String) -> Int {
    var characters = string.map { $0 as Character }
    var stack: [Character] = [] {
        didSet {
            if oldValue.last == stack.last {
                var old = oldValue
                _ = old.removeLast()
                stack = old
            }
        }
    }
    characters.forEach {
        stack.append($0)
    }
    
    return stack.count == 0 ? 1 : 0
}
