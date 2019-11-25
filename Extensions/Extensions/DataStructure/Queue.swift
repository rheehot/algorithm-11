//
//  Queue.swift
//  Extensions
//
//  Created by 이동영 on 2019/11/21.
//  Copyright © 2019 이동영. All rights reserved.
//

import Foundation

protocol Queue {
    
    associatedtype Element
    
    mutating func enqueue(_ element: Element)
    mutating func dequeue() -> Element?
}

// MARK: - Queue
extension Array: Queue {
    
    mutating func enqueue(_ element: Element) {
        self.append(element)
    }
    
    mutating func dequeue() -> Element? {
        guard !self.isEmpty else { return nil }
        
        return self.removeFirst()
    }
}
