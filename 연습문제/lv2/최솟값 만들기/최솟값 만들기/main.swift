//
//  main.swift
//  최솟값 만들기
//
//  Created by 이동영 on 18/08/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

import Foundation

func solution(_ A: [Int], _ B: [Int]) -> Int {
    var min = Int.max
    let permutations = allPermutation([[]], 0, A.count)
    var combinations = allCombination(permutations.count)
    
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
        min = [sum,  min].min() ?? min
    }
    return min
}
/// - Note: O(n)
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
