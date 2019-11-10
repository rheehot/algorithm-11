//
//  main.swift
//  Kakao
//
//  Created by 이동영 on 2019/11/09.
//  Copyright © 2019 이동영. All rights reserved.
//
//
//func solution(_ k:Int64, _ room_number:[Int64]) -> [Int64] {
//    let k = Int(truncating: NSNumber(k))
//    var rooms = 1...k.map { Room(no: $0, isEmpty: true) }
//
//    return []
//}
//
//struct Room {
//    let no: Int
//    var isEmpty: Bool
//}





import Foundation
//
//
//func solution(_ user_id: [String], _ banned_id: [String]) -> Int {
//
//    var userIds = user_id
//    var bannedIds = banned_id
//    var count = 0
//    for index in bannedIds.indices {
//        let bannedId = bannedIds[index]
//        let count = userIds
//            .map { $0.isSimilar(bannedId) }
//            .filter { $0 }
//            .count
//
//        while let bannedId = bannedIds.first {
//            for index in userIds.indices {
//                if userIds[index].isSimilar(bannedId) {
//                    bannedIds.removeFirst()
//                    userIds.remove(at: index)
//                    count += 1
//                }
//            }
//        }
//    return count
//}
//
//
////func combinations(base: [String]) -> [[String]] {
////    var arr = [String].init(repeating: "", count: base.count)
////
////}
//
//
////func combinations(base: [Int]) -> [[Int]] {
////
////    var base = base
////    let baseCount = base.count
////    var newBases: [[Int]] = [[]]
////    var isEnd = false
////
////    while isEnd {
////    while let newBase = newBases.popLast() {
////        while let appended = base.popLast() {
////            let f = combination(base: newBase, appended: appended, front: true)
////            let b = combination(base: newBase, appended: appended, front: false)
////            newBases.append(f)
////            newBases.append(b)
////        }
////
////        if newBases.last?.count == baseCount {
////            return newBases
////        }
////    }
////    }
////    return newBases
////}
////
////func combination(base: [Int], appended: Int?, front: Bool) -> [Int] {
////    guard let appended = appended else { return base }
////    var base = base
////    if front {
////        base.insert(appended, at: 0)
////    } else {
////        base.append(appended)
////    }
////    return base
////}
//}
//enum Symbol {
//
//    static let asterisk: String.Element = "*"
//}
//
//
//extension String {
//
//    func isSimilar(_ pattern: String) -> Bool {
//        guard self.count == pattern.count else { return false }
//
//        for index in pattern.indices {
//            let c = pattern[index]
//
//            guard c == Symbol.asterisk || self[index] == c else {
//                return false
//            }
//        }
//        return true
//    }
//}
//



import Foundation

func solution(_ k: Int64, _ room_number: [Int64]) -> [Int64] {
    
    var rooms = [Int64: Bool]()
    var result = [Int64]()
    
    for roomNumber in room_number {
        
        if rooms[roomNumber]  == nil {
            rooms[roomNumber] = true
        }
        
        if rooms[roomNumber]! {
            rooms[roomNumber] = false
            result.append(roomNumber)
        } else {
            var optional = roomNumber + 1
            label: while k > optional {
                if rooms[optional] == nil {
                    rooms[optional] = true
                    continue label
                }
                if rooms[optional]! {
                    rooms[optional] = false
                    result.append(optional)
                    break label
                }
                optional += 1
            }
        }
    }
    
    return result
}

let k: Int64 = 10
let roomNumbers: [Int64] = [1,3,4,1,3,1]

print(solution( k, roomNumbers))
