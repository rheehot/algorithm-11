//
//  main.swift
//  순위
//
//  Created by 이동영 on 2020/01/13.
//  Copyright © 2020 이동영. All rights reserved.
//

import Foundation
//
//class Player: Hashable {
//
//    static func == (lhs: Player, rhs: Player) -> Bool {
//        return lhs.no == rhs.no
//    }
//
//    func hash(into hasher: inout Hasher) {
//        hasher.combine(no)
//    }
//
//    var no: Int
//    var winners: ContiguousArray<Player> = []
//    var losers: ContiguousArray<Player> = []
//
//    var strongers: ContiguousArray<Player> {
//        if winners.isEmpty { return [] }
//        return winners.reduce(into: ContiguousArray<Player>()) { total, stronger in
//            var strongers = stronger.strongers
//            strongers.append(stronger)
//            total.append(contentsOf: strongers)
//        }
//    }
//
//    var weakers: ContiguousArray<Player> {
//        if losers.isEmpty { return [] }
//        return losers.reduce(into: ContiguousArray<Player>()) { total, weaker in
//            var weakers = weaker.weakers
//            weakers.append(weaker)
//            total.append(contentsOf: weakers)
//        }
//    }
//
//    init(_ no: Int) {
//        self.no = no
//    }
//
//}
//
//
//
//func solution(_ n: Int, _ results: [[Int]]) -> Int {
//
//    let players = (0...n).map { Player($0) }
//
//    results.forEach {
//        let winner = players[$0.first!]
//        let loser = players[$0.last!]
//        winner.losers.append(loser)
//        loser.winners.append(winner)
//    }
//
//    return players.filter {
//        let strongers = Set($0.strongers)
//        let weakers = Set($0.weakers)
//        return strongers.count + weakers.count + 1 == n
//    }.count
//}
class Player: Hashable {
    static func == (lhs: Player, rhs: Player) -> Bool {
        return lhs.no == rhs.no
    }
    func hash(into hasher: inout Hasher) {
        hasher.combine(no)
    }
    
    let no: Int
    var winners: [Player] = []
    var losers: [Player] = []
    
    init(_ no: Int) {
        self.no = no
    }
    
    func numberOfStrongers() -> Int {
        var strongers = Set<Player>()
        var queue = winners
        while !queue.isEmpty {
            let winner = queue.removeFirst()
            strongers.insert(winner)
            queue.append(contentsOf: winner.winners)
        }
        return strongers.count
    }
    
    func numberOfWeakers() -> Int {
        var weakers = Set<Player>()
        var queue = losers
        while !queue.isEmpty {
            let loser = queue.removeFirst()
            weakers.insert(loser)
            queue.append(contentsOf: loser.losers)
        }
        return weakers.count
    }
}
func solution(_ n: Int, _ results: [[Int]]) -> Int {
    let players = (0...n).map { Player($0) }
    
    results.forEach {
        let winner = players[$0.first!]
        let loser = players[$0.last!]
        winner.losers.append(loser)
        loser.winners.append(winner)
    }
    
    return players.filter {
       n == $0.numberOfStrongers() + $0.numberOfWeakers() + 1
    }.count
    
}



let n = 5
let results = [[4, 3], [4, 2], [3, 2], [1, 2], [2, 5]]
let expected = 2
let answer = solution(n, results)
print("결과는 \(answer), 기대값은 \(expected)입니다. 그래서 결론은 \(expected == answer)")
