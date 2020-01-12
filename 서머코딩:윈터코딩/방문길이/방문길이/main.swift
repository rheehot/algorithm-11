//
//  main.swift
//  방문길이
//
//  Created by 이동영 on 2020/01/12.
//  Copyright © 2020 이동영. All rights reserved.
//

import Foundation

func solution(_ dirs: String) -> Int {
    let directions = dirs.compactMap{ Direction(rawValue: $0) }
    
    var current = Point(x: 0, y: 0)
    var lines = Set<Line>()
    
    directions.forEach { command in
        switch command {
        case .up:
            guard current.y < 5 else { break }
            let nextPoint = Point(x: current.x, y: current.y + 1)
            let line = Line(points: Set<Point>(arrayLiteral: current, nextPoint))
            lines.insert(line)
            current = nextPoint
        case .down:
            guard current.y > -5 else { break }
            let nextPoint = Point(x: current.x, y: current.y - 1)
            let line = Line(points: Set<Point>(arrayLiteral: current, nextPoint))
            lines.insert(line)
            current = nextPoint
        case .left:
            guard current.x > -5 else { break }
            let nextPoint = Point(x: current.x - 1, y: current.y)
            let line = Line(points: Set<Point>(arrayLiteral: current, nextPoint))
            lines.insert(line)
            current = nextPoint
        case .right:
            guard current.x < 5 else { break }
            let nextPoint = Point(x: current.x + 1, y: current.y)
            let line = Line(points: Set<Point>(arrayLiteral: current, nextPoint))
            lines.insert(line)
            current = nextPoint
        }
    }
    
    return lines.count
}

enum Direction: Character {
    case up = "U"
    case down = "D"
    case left = "L"
    case right = "R"
}

struct Point: Hashable {
    let x: Int
    let y: Int
}

struct Line: Hashable {
    let points: Set<Point>
}


let commands1 = "ULURRDLLU"
let expected1 = 7
print(solution(commands1) == expected1)
let commands2 = "LULLLLLLU"
let expected2 = 7
print(solution(commands2) == expected2)
