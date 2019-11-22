//
//  main.swift
//  Extensions
//
//  Created by 이동영 on 2019/11/21.
//  Copyright © 2019 이동영. All rights reserved.
//

import Foundation

var p1 = Vertex(index: 1)
var p2 = Vertex(index: 2)
var p3 = Vertex(index: 3)
var p4 = Vertex(index: 4)
var p5 = Vertex(index: 5)
var p6 = Vertex(index: 6)
var p7 = Vertex(index: 7)

p1.linked = [p2, p3, p6]
p2.linked = [p1, p4]
p3.linked = [p1]
p4.linked = [p2, p5, p7]
p5.linked = [p4, p7]
p6.linked = [p1, p7]
p7.linked = [p4, p5, p6]

//DFS(graph: p1) { p in print(p.index) }
BFS(graph: p1) { p in print(p.index) }
