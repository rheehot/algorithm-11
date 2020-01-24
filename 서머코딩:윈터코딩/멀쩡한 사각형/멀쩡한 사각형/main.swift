//
//  main.swift
//  멀쩡한 사각형
//
//  Created by 이동영 on 2020/01/24.
//  Copyright © 2020 이동영. All rights reserved.
//

import Foundation

class Point {
    let x: Int
    let y: Int
    
    init(_ x: Int,_ y: Int) {
        self.x = x
        self.y = y
    }
}

class Line {
    let start: Point
    let end: Point
    
    func y(_ x: Int) -> Int {
        return end.y/end.x * x
    }
    
    init(start: Point, end: Point) {
        self.start = start
        self.end = end
    }
    
    func across(_ rect: Rect) -> Bool {
        let condition1 = rect.p4.y <= self.y(rect.p4.x) && self.y(rect.p4.x) < rect.p4.y+1
        let condition2 = rect.p1.y <= self.y(rect.p2.x) && self.y(rect.p1.x) < rect.p1.y+1
        return condition1 || condition2
    }
}

class Rect {
    let p1: Point
    let p2: Point
    let p3: Point
    let p4: Point
    
    init(_ p1: Point, _ p2: Point, _ p3: Point, _ p4: Point) {
        self.p1 = p1
        self.p2 = p2
        self.p3 = p3
        self.p4 = p4
    }
}

func solution(_ w: Int, _ h: Int) -> Int64 {
    let line = Line(start: Point(0, 0), end: Point(w, h))
    var rects: [Rect] = []
    
    for x in 0..<w {
        for y in 0..<h {
            let p1 = Point(x,y)
            let p2 = Point(x+1,y)
            let p3 = Point(x,y+1)
            let p4 = Point(x+1,y+1)
            let rect = Rect(p1, p2, p3, p4)
            if !line.across(rect) {
                rects.append(rect)
            }
        }
    }
    return Int64(rects.count)
}

let w1 = 8
let h1 = 12
let expected1 = 80
print(solution(w1, h1) == expected1)
