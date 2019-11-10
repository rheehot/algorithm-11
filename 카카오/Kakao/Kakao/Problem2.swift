//
//  Problem2.swift
//  Kakao
//
//  Created by 이동영 on 2019/11/09.
//  Copyright © 2019 이동영. All rights reserved.
//

import Foundation


enum Problem2 {
    
    enum Symbol {
        static let open: Character = "{"
        static let close: Character = "}"
        static let comma: Character = ","
    }
    
    static func solution(_ s: String) -> [Int] {
        var dp = [Int]()
        let sets = parse(s).sorted(by: <)
        
        sets.forEach {
            let newNumbers = $0.elements
                .filter { !dp.contains($0) }
            dp.append(contentsOf: newNumbers)
        }
        return dp
    }
    
    static func parse(_ s: String) -> [MySet] {
        
        let chars = s.map { $0 as Character }
        
        var result = [MySet]()
        var stack = [Int]()
        var buffer = [Character]()
        for index in chars.indices {
            let c = chars[index]
            switch c {
            case Symbol.open:
                stack.removeAll()
            case Symbol.close:
                if buffer.isEmpty { break }
                let number = Int(String(buffer))!
                buffer.removeAll()
                stack.append(number)
                result.append(MySet(elements: stack))
            case Symbol.comma:
                if buffer.isEmpty { break }
                let number = Int(String(buffer))!
                buffer.removeAll()
                stack.append(number)
            default :
                buffer.append(c)
            }
        }
        
        return result
    }
    
    
    struct MySet: Comparable {
        var elements = [Int]()
        var count: Int {
            return elements.count
        }
        
        static func < (lhs: MySet, rhs: MySet) -> Bool {
            return lhs.count < rhs.count
        }
    }
    
}

extension Array where Element == Int {
    
    static func - (lhs: [Int], rhs: [Int]) -> [Int] {
        
        return lhs.filter { !rhs.contains($0) }
    }
}
