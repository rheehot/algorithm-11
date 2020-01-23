//
//  main.swift
//  전화번호 목록
//
//  Created by 이동영 on 2020/01/23.
//  Copyright © 2020 이동영. All rights reserved.
//

import Foundation


func solution(_ phoneBook: [String]) -> Bool {
    var phoneNumbers = Set<String>()
    for p1 in phoneBook {
        for p2 in phoneBook {
            if p1.count <= p2.count {
                if p1 == p2[p1.startIndex..<p1.endIndex] {
                    phoneNumbers.insert(p1)
                }
            }
        }
    }
    print(phoneNumbers)
    return phoneNumbers.count == phoneBook.count
}

let p1 = ["119", "97674223", "1195524421"]
let r1 = false
print(solution(p1) == r1)

let p2 = ["123","456","789"]
let r2 = true
print(solution(p2) == r2)

let p3 = ["12", "123", "1235", "567", "88"]
let r3 = false
print(solution(p3) == r3)
