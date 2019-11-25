//
//  main.swift
//  Extensions
//
//  Created by 이동영 on 2019/11/21.
//  Copyright © 2019 이동영. All rights reserved.
//

import Foundation
//
//var p1 = Vertex(index: 1)
//var p2 = Vertex(index: 2)
//var p3 = Vertex(index: 3)
//var p4 = Vertex(index: 4)
//var p5 = Vertex(index: 5)
//var p6 = Vertex(index: 6)
//var p7 = Vertex(index: 7)
//
//p1.linked = [p2, p3, p6]
//p2.linked = [p1, p4]
//p3.linked = [p1]
//p4.linked = [p2, p5, p7]
//p5.linked = [p4, p7]
//p6.linked = [p1, p7]
//p7.linked = [p4, p5, p6]
//
////DFS(graph: p1) { p in print(p.index) }
//BFS(graph: p1) { p in print(p.index) }

let s1 = "ㅇㅏㄴ"
//  12615
//  12623
//  12596
//  UTF16View(value: "\u{3147}")
//  UTF16View(value: "\u{314F}")
//  UTF16View(value: "\u{3134}")

let s2 = "안"
//  50504
//  UTF16View(value: "\u{C548}")
for i in s2.unicodeScalars {
    print(i.utf16)
}
print(s1 == s2)

print(s1[s1.startIndex...s1.startIndex])
print(s2[s2.startIndex...s2.startIndex])


var collection = ["이동영", "야곰"]

