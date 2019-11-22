//
//  Stack.swift
//  Extensions
//
//  Created by 이동영 on 2019/11/21.
//  Copyright © 2019 이동영. All rights reserved.
//

import Foundation

// MARK: - Stack
protocol Stack {
    
    associatedtype Element
    
    mutating func push(_ element: Element)
    mutating func pop() -> Element?
    func peek() -> Element?
}

// MARK: - Stack
extension Array: Stack {
    
    mutating func push(_ element: Element) {
        self.append(element)
    }
    
    mutating func pop() -> Element? {
        return self.popLast()
    }
    
    func peek() -> Element? {
        return self.last
    }
}
