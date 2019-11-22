//
//  Graph.swift
//  Extensions
//
//  Created by 이동영 on 2019/11/21.
//  Copyright © 2019 이동영. All rights reserved.
//

import Foundation

// MARK: - Vertex
class Vertex: Hashable {
    let index: Int
    var isVisited: Bool = false
    var linked: [Vertex] = []
    
    init(index: Int) {
        self.index = index
    }
    
    static func == (lhs: Vertex, rhs: Vertex) -> Bool {
        return lhs.index == rhs.index
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(index)
    }
}

typealias Graph = Vertex

// MARK: - Edge
struct Edge: Hashable {
    
    let start: Vertex
    let end: Vertex
    
    let weight: Int
    
    init(from start: Vertex, to end: Vertex, weight: Int = 1) {
        self.start = start
        self.end = end
        self.weight = weight
    }
}

// MARK: - AdjacencyMatrix
struct AdjacencyMatrix {
    
    var matrix: [[Bool]]
    
    init(edges: [Edge]) {
        let count = edges.count
        matrix = [[Bool]](repeating: [Bool](repeating: false, count: count), count: count)
        for edge in edges {
            matrix[edge.start.index][edge.end.index] = true
        }
    }
}

// MARK: - DFS
func DFS(graph: Graph, completion: (Vertex) -> Void) {
    
    var stack = [Vertex]()
    graph.isVisited = true
    completion(graph)
    stack.push(graph)
    
    func dfs(vertex: Vertex, completion: (Vertex) -> Void) {
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


func dfs(graph: AdjacencyMatrix, completion: (Vertex) -> Void) {
    
}

// MARK: - BFS
func BFS(graph: Graph, completion: (Vertex) -> Void) {
    var queue = [Vertex]()
    graph.isVisited = true
    queue.enqueue(graph)
    
    while let end = queue.dequeue() {
        completion(end)
        end.linked
            .filter { !$0.isVisited }
            .forEach {
                $0.isVisited = true
                queue.enqueue($0)
        }
    }
    
}
