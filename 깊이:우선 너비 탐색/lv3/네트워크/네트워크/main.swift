//
//  main.swift
//  네트워크
//
//  Created by 이동영 on 2019/11/22.
//  Copyright © 2019 이동영. All rights reserved.
//

import Foundation

// MARK: - Stack
extension Array {
    
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



func solution(_ n: Int, _ computers: [[Int]]) -> Int {
    
    var count = 0
    
    var nodes = (0..<n).map { Computer(no: $0) }
    
    for start in computers.indices {
        for end in computers[0].indices {
            guard start != end else { continue }
            
            if computers[start][end] == 1 { nodes[start].linked.append(nodes[end]) }
        }
    }
    
    nodes.forEach {
        print("컴퓨터",$0.no)
        $0.linked.forEach { print($0.no) }
        print("===============")
    }
    
    var stack = nodes
    while !stack.isEmpty {
        DFS(stack: stack, graph: stack.first!, completion: { r in stack.removeAll { $0.no == r.no } })
        count += 1
    }
    
    return count
}

class Computer {
    let no: Int
    var linked: [Computer] = []
    var isVisited = false
    
    init(no: Int) {
        self.no = no
    }
}

typealias Graph = Computer

// MARK: - DFS
func DFS(stack: [Computer], graph: Graph, completion: (Computer) -> Void) {
    
    var stack = stack
    graph.isVisited = true
    completion(graph)
    stack.push(graph)
    
    func dfs(vertex: Computer, completion: (Computer) -> Void) {
        while
            let current = stack.peek(),
            let next = current.linked.first(where: { !$0.isVisited }) {
                next.isVisited = true
                completion(next)
                stack.push(next)
                dfs(vertex: next, completion: completion)
        }
        _ = stack.pop()
        if stack.isEmpty { return }
    }
    dfs(vertex: graph, completion: completion)
}

let result = solution(3,  [[1, 1, 0], [1, 1, 1], [0, 1, 1]])
print(result)
