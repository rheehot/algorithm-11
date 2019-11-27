//
//  main.swift
//  여행경로
//
//  Created by 이동영 on 2019/11/27.
//  Copyright © 2019 이동영. All rights reserved.
//
import Foundation


func solution2(_ tickets:[[String]]) -> [String] {
    
    var edges = [String: [String]]()
    var paths = ["ICN"]
    
    tickets.forEach {
        let start = $0[0]
        let dest = $0[1]
        edges[start] = ((edges[start] ?? []) + [dest]).sorted(by: >)
    }
    while
        let current = paths.last,
        var destinations = edges[current],
        !destinations.isEmpty {
            let dest = destinations.popLast()!
            if edges[dest]?.isEmpty ?? false && edges.reduce(0, { $0 + $1.value.count }) != 1 {
                edges[current] = ((edges[current] ?? []) + [dest]).sorted(by: <)
                continue
            }
            edges[current] = destinations
            paths.append(dest)
    }
    return paths
}
let tickets0 = [["ICN", "BOO"],
                ["ICN", "COO"],
                ["COO", "DOO"],
                ["DOO", "COO"],
                ["BOO", "DOO"],
                ["DOO", "BOO"],
                ["BOO", "ICN"],
                ["COO", "BOO"]]

let result0 = ["ICN", "BOO", "DOO", "BOO", "ICN", "COO", "DOO", "COO", "BOO"]

let tickets1 = [["ICN", "JFK"],
                ["HND", "IAD"],
                ["JFK", "HND"]]

let result1 = ["ICN", "JFK",
               "HND", "IAD"]

let tickets2 = [["ICN", "SFO"],
                ["ICN", "ATL"],
                ["SFO", "ATL"],
                ["ATL", "ICN"],
                ["ATL", "SFO"]]

let result2 = ["ICN", "ATL",
               "ICN", "SFO",
               "ATL", "SFO"]

print(solution2(tickets2))


class Spot {
    
    let name: String
    var isVisited: Bool = false
    
    init(_ name: String) {
        self.name = name
    }
}

class Edge {
    
    var start: Spot
    var destination: Spot
    
    init(_ start: Spot, _ destination: Spot) {
        self.start = start
        self.destination = destination
    }
}

func solution(_ tickets: [[String]]) -> [String] {
    
    var paths = [Spot]()
    var edges = [Edge]()
    
    tickets.forEach {
        let start = Spot($0[0])
        let dest = Spot($0[1])
        edges.append(Edge(start, dest))
    }
    
    return paths.map { $0.name }
}

