//
//  main.swift
//  N으로 표현
//
//  Created by 이동영 on 20/09/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

import Foundation

// 결과 / 결과에 필요한 갯수


func solution(_ N: Int, _ number: Int) -> Int {
    var memoization = [Int: Int]()
    memoization[N] = 1
    
    while memoization.values.max()! < 8 {
        for num1 in memoization.sorted(by: <) {
            for num2 in memoization.sorted(by: <)  {
                Operations.allCases.forEach {
                    operation in
                    switch (num1.key, num2.key, operation) {
                    case (0,_,_):
                        ()
                    case (_, 0, .division):
                        ()
                    case (_, _, .shiftLeft):
                        let result = operation.logic(num1.key ,num2.key)
                        print(num1.key,operation,num2.key,result)
                        if let exist = memoization[result] {
                            memoization[result] = min(exist, num1.value + 1)
                        } else {
                            memoization[result] = num1.value + 1
                        }
                    case (_, _, _):
                        let result = operation.logic(num1.key ,num2.key)
                        print(num1.key,operation,num2.key,result)
                        if let exist = memoization[result] {
                            memoization[result] = min(exist, num1.value + num2.value)
                        } else {
                            memoization[result] = num1.value + num2.value
                        }
                    }
                }
                
            }
            
        }
    }
    return  memoization[number] ?? -1
}

enum Operations: CaseIterable, CustomStringConvertible{
    var description: String {
        switch self {
            
        case .addition:
            return "+"
        case .subtraction:
            return "-"
        case .multiplication:
            return "*"
        case .division:
            return "/"
        case .shiftLeft:
            return "<<"
        }}
    
    case addition
    case subtraction
    case multiplication
    case division
    case shiftLeft
    
    
    
    var logic: (Int, Int) -> Int {
        switch self {
        case .addition:
            return { $0 + $1 }
        case .subtraction:
            return { $0 - $1 }
        case .multiplication:
            return { $0 * $1 }
        case .division:
            return { $0 / $1 }
        case .shiftLeft:
            return { num, _ in num * 11 }
        }
    }
}

func bench(benchFunc: () -> ()) {
    let startTime = CFAbsoluteTimeGetCurrent()
    benchFunc()
    let processTime = CFAbsoluteTimeGetCurrent() - startTime
    print("Process Time = \(processTime)")
}

bench(benchFunc: { print(solution(5, 12)) })
