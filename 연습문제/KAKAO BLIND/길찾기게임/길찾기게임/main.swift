//
//  main.swift
//  길찾기게임
//
//  Created by 이동영 on 03/09/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

import Foundation


extension Array where Element == Node {
    mutating func getRightNode(_ node: Node) -> Node? {
        self.sort(by: <)
        let seed = self.max()
        let result = node.x > seed?.x ?? -1 ? self.popLast() : nil
        return result
    }
    
    mutating func getLeftNode(_ node: Node) -> Node? {
        self.sort(by: <)
        let seed = self.max()
        let result = node.x < seed?.x ?? -1 ? self.popLast() : nil
        return result
    }
}


struct BTree {
    var root: Node
}

class Node: CustomStringConvertible ,Comparable {
    var description: String {
        return "(x:\(x), y:\(y))\n"
    }
    
    let x: Int
    let y: Int
    
    var right: Node?
    var left: Node?
    
    var back: Node?
    
    init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
    
    func setNodes(_ nodes: [Node]) {
        var nodes = nodes
        self.right = nodes.getRightNode(self)
        self.left = nodes.getLeftNode(self)
    }
    
    static func < (lhs: Node, rhs: Node) -> Bool {
        let greaterY = lhs.y < rhs.y
        let equalY = lhs.y == rhs.y
        let greaterX = lhs.x < rhs.x
        
        return equalY ? greaterX : greaterY
    }
    
    static func == (lhs: Node, rhs: Node) -> Bool {
        return lhs.x == rhs.x && lhs.y == rhs.y
    }
}

func solution(_ nodeinfo: [[Int]]) -> [[Int]] {
    var nodes = nodeinfo
        .map { $0 }
        .map { Node(x:$0[0], y:$0[1]) }
        .sorted(by: <)
    let tree = BTree(root: nodes.popLast()!)
    
    return []
}

let result = solution([[5,3],[11,5],[13,3],[3,5],[6,1],[1,3],[8,6],[7,2],[2,2]])
print(result)
