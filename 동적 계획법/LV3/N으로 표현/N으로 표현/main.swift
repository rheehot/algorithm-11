////
////  main.swift
////  N으로 표현
////
////  Created by 이동영 on 20/09/2019.
////  Copyright © 2019 부엉이. All rights reserved.
////
//
//import Foundation
//
//// 결과 / 결과에 필요한 갯수
//
//
////func solution(_ N: Int, _ number: Int) -> Int {
////    var memoization = [Int: Int]()
////    memoization[N] = 1
////
////    while memoization.values.max()! < 8 {
////        for num1 in memoization.sorted(by: <) {
////            for num2 in memoization.sorted(by: <)  {
////                Operations.allCases.forEach {
////                    operation in
////                    switch (num1.key, num2.key, operation) {
////                    case (0,_,_):
////                        ()
////                    case (_, 0, .division):
////                        ()
////                    case (_, _, .shiftLeft):
////                        let result = operation.logic(num1.key ,num2.key)
////                        print(num1.key,operation,num2.key,result)
////                        if let exist = memoization[result] {
////                            memoization[result] = min(exist, num1.value + 1)
////                        } else {
////                            memoization[result] = num1.value + 1
////                        }
////                    case (_, _, _):
////                        let result = operation.logic(num1.key ,num2.key)
////                        print(num1.key,operation,num2.key,result)
////                        if let exist = memoization[result] {
////                            memoization[result] = min(exist, num1.value + num2.value)
////                        } else {
////                            memoization[result] = num1.value + num2.value
////                        }
////                    }
////                }
////
////            }
////
////        }
////    }
////    return  memoization[number] ?? -1
////}
////
////enum Operations: CaseIterable, CustomStringConvertible{
////    var description: String {
////        switch self {
////
////        case .addition:
////            return "+"
////        case .subtraction:
////            return "-"
////        case .multiplication:
////            return "*"
////        case .division:
////            return "/"
////        case .shiftLeft:
////            return "<<"
////        }}
////
////    case addition
////    case subtraction
////    case multiplication
////    case division
////    case shiftLeft
////
////
////
////    var logic: (Int, Int) -> Int {
////        switch self {
////        case .addition:
////            return { $0 + $1 }
////        case .subtraction:
////            return { $0 - $1 }
////        case .multiplication:
////            return { $0 * $1 }
////        case .division:
////            return { $0 / $1 }
////        case .shiftLeft:
////            return { num, _ in num * 11 }
////        }
////    }
////}
////
//
//func bench(benchFunc: () -> ()) {
//    let startTime = CFAbsoluteTimeGetCurrent()
//    benchFunc()
//    let processTime = CFAbsoluteTimeGetCurrent() - startTime
//    print("Process Time = \(processTime)")
//}
//
////bench(benchFunc: { print(solution(5, 12)) })
//
//
//
//
//
//func test1(_ array: [Int], _ count: Int) {
//    if count == 0 { return }
//    var array = array
//    return test1(array, count-1)
//}
//func test2(_ array: inout [Int], _ count: Int) {
//    if count == 0 { return }
//    return test2(&array, count-1)
//}
//
//bench {
//    var arr = Array(0...10000)
//    test1(arr, 10000)
//    // Process Time = 0.010921001434326172
//
//    test2(&arr, 1000)
//    // Process Time = 0.011866092681884766
//}


class 직사각형 {
    var 너비: Int
    var 높이: Int
    
    var 넓이 : Int {
        return 너비 * 높이
    }
    
    init(너비: Int, 높이: Int) {
        self.너비 = 너비
        self.높이 = 높이
    }
    
}

class 정사각형: 직사각형 {
    
    override var 너비: Int {
        didSet {
            if 높이 != 너비 {
                높이 = 너비
            }
        }
    }
    
    override var 높이: Int {
        didSet {
            if 너비 != 높이 {
                너비 = 높이
            }
        }
    }
    
}

var 사각형: 직사각형

사각형 = 정사각형(너비: 10, 높이: 10)

사각형.너비 = 11 // 110?
print(사각형.넓이) // 121
