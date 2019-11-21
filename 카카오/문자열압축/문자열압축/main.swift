////
////  main.swift
////  문자열압축
////
////  Created by 이동영 on 2019/11/20.
////  Copyright © 2019 이동영. All rights reserved.
////
//
import Foundation
//
//typealias Compression = (count: Int, chars: [Character])
//
//func solution(_ s: String) -> Int {
//
//    var compressions = s.map { (count: 1, chars: [$0 as Character]) }
//    var beforeCount = 0
//
//    while (beforeCount != compressions.count) {
//
//        var temp: [Compression] = [(count: 1, chars: [])]
//        var jump = false
//        for compression in compressions {
//            if jump {
//                jump.toggle()
//                temp.append(compression)
//                continue
//            }
//            if var before = temp.popLast() {
//                print("before:", before.count, before.chars)
//                print("current:", compression.count, compression.chars)
//                if before.chars == compression.chars {
//                    let zip = (count: before.count + 1, chars: before.chars)
//                    temp.append(zip)
////                    jump = true
//                }
//                else if before.count == compression.count {
//                    before.chars.append(contentsOf: compression.chars)
//                    let zip = (count: before.count, chars: before.chars)
//                    temp.append(zip)
////                    jump = true
//                }
//                else {
//                    temp.append(before)
//                    temp.append(compression)
//                }
//            }
//        }
//        beforeCount = compressions.count
//        compressions = temp
//    }
//    return compressions.reduce(0) { $0 + $1.chars.count + 1 }
//}
//
//let array = ["aabbaccc",]
////             "ababcdcdababcdcd",
////             "abcabcdede",
////             "abcabcabcabcdededededede",
////             "xababcdcdababcdcd"]
////7
////9
////8
////14
////17
//
//for e in array {
//    print(solution(e))
//}
let url = URL(string: "http://public.codesquad.kr/jk/weatherapp/customcell.json")!
let data = try! Data(contentsOf: url)
let string = String(data: data, encoding: .utf8)
print(string)
//print(data.base64EncodedString(options: .))
