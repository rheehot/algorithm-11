//
//  main.swift
//  스킬트리
//
//  Created by 이동영 on 2019/11/11.
//  Copyright © 2019 이동영. All rights reserved.
//

import Foundation

func solution(_ skill: String, _ skill_trees: [String]) -> Int {
    
    let skillTree = skill.map { $0 as Character }
    
    let skillTrees = skill_trees
        .map { $0.filter { skillTree.contains($0) } }
    
    return skillTrees
        .filter { skill.hasPrefix($0) }
        .count
}

let skill = "CBD"
let skill_trees = ["BACDE", "CBADF", "AECB", "BDA"]
let result = solution(skill, skill_trees)
print(result)
