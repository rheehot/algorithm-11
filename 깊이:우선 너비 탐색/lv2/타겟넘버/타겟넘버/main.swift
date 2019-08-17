//
//  main.swift
//  타겟넘버
//
//  Created by 이동영 on 14/08/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

import Foundation

func solution(_ numbers: [Int], _ target: Int) -> Int {
    var operaters = add([[true],[false]], numbers.count)
    var results = [Int]()
    while let op = operaters.popLast() {
        var opCount = -1
        results.append(
            numbers
                .reduce(0){ opCount += 1; return op[opCount] ? $0 + $1 : $0 - $1  }
        )
    }
    
    return results.filter { $0 == target}.count
}

func add(_ arr: [[Bool]], _ num: Int) -> [[Bool]] {
    var arr = arr
    var result = [[Bool]]()
    while let bools = arr.popLast() {
        var trueBools = bools
        trueBools.append(true)
        var falseBools = bools
        falseBools.append(false)
        result.append(trueBools)
        result.append(falseBools)
    }
    if (result[0].count == num) { return result }
    return add(result,num)
}

print(solution([1,1,1,1,1], 3))

import Foundation

struct Food: Codable {
    let id: String
    let storeDate: String
    let name: String
    let owner: String
    let expireDate: String?
    let category: String
    let location: String
    let memo: String
    let createdAt: String
    
    
    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case storeDate
        case name
        case owner
        case expireDate
        case category
        case location
        case memo
        case createdAt
        
    }
}


let json =
"""
[
   {
       "_id": "5d54363d174bf703bcc3a3f5",
       "name": "cocacola",
       "owner": "circus",
       "expireDate": "2019-08-21T16:26:37.794Z",
       "storeDate": "2019-08-14T16:26:37.000Z",
       "category": "drink",
       "location": "냉장고",
       "memo": "마시지마",
       "createdAt": "2019-08-14T16:26:37.806Z",
       "updatedAt": "2019-08-14T16:26:37.806Z",
       "__v": 0
   },
   {
       "_id": "5d5436e37d488f5bf0f2e013",
       "name": "cocacola",
       "owner": "circus",
       "expireDate": "2019-08-21T16:29:23.976Z",
       "storeDate": "2019-08-14T16:29:23.000Z",
       "category": "drink",
       "location": "냉장고",
       "memo": "마시지마",
       "createdAt": "2019-08-14T16:29:23.990Z",
       "updatedAt": "2019-08-14T16:29:23.990Z",
       "__v": 0
   },
   {
       "_id": "5d5439a68b9c977830046c0d",
       "name": "코카콜라",
       "owner": "서커스",
       "storeDate": "2019-09-03T16:41:10.237Z",
       "category": "음료",
       "location": "냉장고",
       "memo": "성공",
       "createdAt": "2019-08-14T16:41:10.249Z",
       "updatedAt": "2019-08-14T16:41:10.249Z",
       "__v": 0
   }
]
"""


let jsonData = json.data(using: .unicode)
print(jsonData)

let food = try JSONDecoder().decode([Food].self, from: jsonData!)

print(food)
