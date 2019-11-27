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
//for i in s2.unicodeScalars {
//    print(i.utf16)
//}
//print(s1 == s2)
//
//print(s1[s1.startIndex...s1.startIndex])
//print(s2[s2.startIndex...s2.startIndex])
//
//
var collection = ["이동영", "야곰", "조민지"]

//collection.forEach {
//    let a = $0.unicodeScalars.reduce(""){ $0 + "\($1.utf16)" + "" }
//    print($0)
//    print(a)
//}
//
//
//let s = "\u{110C}\u{1166}"
//print(s)
func splitText(text: String) -> Bool {
    guard let text = text.last else { return false }
    
    let val = UnicodeScalar(String(text))?.value
//    let val = text.unicodeScalars.first?.value
    guard let value = val else { return false }
    
    let x = (value - 0xac00) / 28 / 21
    
    let y = ((value - 0xac00) / 28) % 21
    
    let z = (value - 0xac00) % 28
    
    let i = UnicodeScalar(0x1100 + x) //초성
    
    let j = UnicodeScalar(0x1161 + y) //중성
    
    let k = UnicodeScalar(0x11a6 + 1 + z) //종성
    
    print(i!,j!,k!)
    
    return true
}

//print(Int16(21 * 28))
//
//AE4C
let n = 0xAC00 + (21 * 28)
//splitText(text: "\u{AE68}")
let a = "ㄱ".unicodeScalars.first!.value // 3131
let b = "ㅏ".unicodeScalars.first!.value // 314F
//var st = String(format:"%2X", b)
// 3131 ㄱ
// 314F ㅏ
// AC00 가
//print(UnicodeScalar(0x3131)!UnicodeScalar(0x314F)!.description)

print((0xB09C - 0xAC00) / 21 / 28 + 0x1100)
let temp = String(format: "%2X", 4354)
print(temp)
print("\u{1102}")
var sss = (0x3131 * 28 * 21) + (0x314F * 28)
print(sss)
let aa = UnicodeScalar(sss)
let abc = (0xAC00 - 0xAC00) / 28 / 21 + 0x1100
//print(String(format: "))
print(abc)
//print(st)
//print(st)
//print("\u{AE4C}")
//print("\u{3147}".unicodeScalars.first!.value)
//print("\u{314F}".unicodeScalars.first!.value)
//print("\u{3134}".unicodeScalars.first!.value)
//print((((12615 * 21) + 12623) * 28 + 12596 + 44032).description.unicodeScalars.first!.utf16)

//func firstSpell(at text: String) -> String? {
//    guard let firstSpell = text.unicodeScalars.first else { return nil }
//    switch firstSpell.value {
//    case 0xAC00...0xD7A3:
//        let x = UnicodeScalar((firstSpell.value - 0xAC00) / 28 / 21 + 0x1100)
//        return x?.description
//    default:
//        return firstSpell.description
//    }
//}
//
//let result = firstSpell(at: "안녕너")
//print(result)
//
//
//let result2 = firstSpell(at: "ABC")
//print(result2)
//
//let result3 = firstSpell(at: "mdlqwmd")
//print(result3)
