//
//  main.swift
//  최솟값 만들기
//
//  Created by 이동영 on 18/08/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

import Foundation
//====================
//      Solution1
//====================
extension Array where Element == Int {
    func maxIndex() -> Int {
        var max = 0
        var maxIndex = 0
        for (index, value) in self.enumerated() {
            if max < value  { max = value ; maxIndex = index }
        }
        return maxIndex
    }
    
    func minIndex() -> Int {
        var min = 0
        var minIndex = 0
        for (index, value) in self.enumerated() {
            if min > value  { min = value ; minIndex = index }
        }
        return minIndex
    }
}


func solution(_ A: [Int], _ B: [Int]) -> Int {
    var A = A
    var B = B
    var sum = 0
    while A.count > 0 {
        let ax = A.maxIndex()
        let an = A.minIndex()
        let bx = B.maxIndex()
        let bn = B.minIndex()
        let v1 = A[ax] * B[bn]
        let v2 = A[an] * B[bx]
        
        if v1 < v2 {
            A.remove(at: ax)
            B.remove(at: bn)
            sum += v1
        }
        else {
            A.remove(at: an)
            B.remove(at: bx)
            sum += v2
        }
    }
    return sum
}

//====================
//      Solution2
//====================
func solution2(_ A: [Int], _ B: [Int]) -> Int {
    var min = Int.max
    let permutations = allPermutation([[]], 0, A.count) /// - Note: O(n ** 2)
    var combinations = allCombination(permutations.count) /// - Note: O(n ** 2)
    
    /// - Note: O(n ** 2)
    while let combination = combinations.popLast() {
        let permutation1 = permutations[combination.0]
        let permutation2 = permutations[combination.1]
        
        var sum = 0
        for i in 0..<permutation1.count {
            let index1 = permutation1[i]
            let index2 = permutation2[i]
            
            sum += A[index1] * B[index2]
        }
        min = min < sum ? min : sum
        
    }
    return min
}
/// - Note: O(n**2)
func allPermutation(_ array: [[Int]], _ input: Int, _ count: Int) -> [[Int]] {
    if array[0].count == count { return array }
    
    var front = array
    var back = array
    
    /// - Note: O(n)
    for i in 0..<array.count {
        front[i].insert(input, at: 0)
        back[i].append(input)
    }
    front.append(contentsOf: back)
    /// - Note: O(n)
    return allPermutation(front , input+1, count)
}

func allCombination(_ count: Int) -> [(Int, Int)] {
    var combination = [(Int, Int)]()
    
    /// - Note: O(n**2)
    for i in 0..<count {
        for j in 0..<count {
            combination.append((i,j))
        }
    }
    return combination
}
