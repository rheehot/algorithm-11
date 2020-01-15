//
//  main.swift
//  영어끝말잇기
//
//  Created by 이동영 on 2020/01/15.
//  Copyright © 2020 이동영. All rights reserved.
//

import Foundation

func solution(_ n: Int, _ words: [String]) -> [Int] {
    var 이미_말한_단어들 = Set<String>()
    var 방금_말한_단어: String? = words.first
    이미_말한_단어들.insert(방금_말한_단어!)
    
    for i in words.indices {
        if i == 0 { continue }
        let 지금_말한_단어 = words[i]
        if 이미_말한_단어들.contains(지금_말한_단어) || 방금_말한_단어?.last != 지금_말한_단어.first {
            return [i%n + 1, i/n + 1]
        }
        이미_말한_단어들.insert(지금_말한_단어)
        방금_말한_단어 = 지금_말한_단어
    }
    
    return [0, 0]
}

let words = ["hello", "observe", "effect", "take", "either", "recognize", "encourage", "ensure", "establish", "hang", "gather", "refer", "reference", "estimate", "executive"]

print(solution(3, words))
