//
//  Nodeable.swift
//  LinkedList
//
//  Created by 이동영 on 07/07/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

import Foundation

protocol Nodeable where Self: AnyObject {
    associatedtype Head: Nodeable
    associatedtype Value
    
    var head: Head? { get }
    var value: Value { get }
}

class Node: Nodeable {
    typealias Head = Node
    typealias Value = Int
    
    var head: Node?
    var value: Int
    
    init(head: Node, value: Int) {
        self.head = head
        self.value = value
    }
    
}
