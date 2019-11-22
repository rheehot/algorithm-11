//
//  main.swift
//  숫자 야구
//
//  Created by 이동영 on 2019/11/22.
//  Copyright © 2019 이동영. All rights reserved.
//

import Foundation


extension String {
    var characters: [Character] {
        return self.map { $0 as Character }
    }
}

extension Array where Element == Character {
    typealias Result = (strike: Int, ball: Int)
    
    func getResult(_ other: [Character]) -> Result {
        var strike = 0
        var ball = 0
        for index in self.indices {
            if self[index] == other[index] { strike += 1 }
            else if other.contains(self[index]) { ball += 1  }
        }
        
        return (strike: strike, ball: ball)
    }
}


typealias Condition = (target: [Character] , strike: Int, ball: Int)

func solution(_ baseball: [[Int]]) -> Int {
    let conditions = baseball.map { (target: String($0[0]).characters , strike: $0[1], ball: $0[2]) }
    
    
    return getAllCase()
        .filter { check(answer: $0, conditions: conditions) }
        .count
}

func check(answer: [Character], conditions: [Condition]) -> Bool {
    return conditions.reduce(true) { bool, condition in
        let result = answer.getResult(condition.target)
        return  bool && result.strike == condition.strike  && result.ball == condition.ball
    }
}

func getAllCase () -> [[Character]]{
    let base = Array(1...9)
    var permutation = [String]()
    
    for a in base {
        for b in base {
            for c in base {
                let number = "\(a)\(b)\(c)"
                permutation.append(number)
            }
        }
    }
    permutation = permutation.filter { string in
        Set(string.characters).count == string.count
    }
    return permutation.map { $0.characters }
}




let result = solution([[123, 1, 1], [356, 1, 0], [327, 2, 0], [489, 0, 1]])
print(result)

