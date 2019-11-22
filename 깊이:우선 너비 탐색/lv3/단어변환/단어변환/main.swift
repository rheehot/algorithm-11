//
//  main.swift
//  단어변환
//
//  Created by 이동영 on 2019/11/22.
//  Copyright © 2019 이동영. All rights reserved.
//

import Foundation

// MARK: - Queue

extension Array {
    
    mutating func enqueue(_ element: Element) {
        self.append(element)
    }
    
    mutating func dequeue() -> Element? {
        guard !self.isEmpty else { return nil }
        
        return self.removeFirst()
    }
    
    mutating func peek() -> Element? {
        return self.last
    }
}


extension String {
    
    var characters: [Character] {
        return self.map { $0 as Character }
    }
    
    func matchCount(with other: String) -> Int {
        var count = 0
        let `self` = self.characters
        let other = other.characters
        
        for i in 0..<self.count {
            if `self`[i] == other[i] { count += 1 }
        }
        return count
    }
    
    func diffCount(with other: String) -> Int {
        var count = self.count
        let `self` = self.characters
        let other = other.characters
        
        for i in 0..<count {
            if `self`[i] == other[i] { count -= 1 }
        }
        return count
    }
}

func solution(_ begin: String, _ target: String, _ words: [String]) -> Int {
    guard words.contains(target) else { return 0 }
    
    var queue = [begin]
    var check = [Bool](repeating: false, count: words.count)
    var count = 0
    
    func bfs() {
        guard let word = queue.peek() else { return }
        
        for i in words.indices {
            
            let newWord = words[i]
            print(!check[i],
            word.diffCount(with: newWord) == 1,
            (word.matchCount(with: target) <= newWord.matchCount(with: target)))
            if  !check[i] && word.diffCount(with: newWord) == 1 &&
                (word.matchCount(with: target) <= newWord.matchCount(with: target)) {
                
                check[i] = true
                queue.enqueue(newWord)
            }
            
            print(word, newWord)
            print(queue)
        }
        
        if word == queue.peek() { return }
        count += 1
        _ = queue.dequeue()
        bfs()
    }
    bfs()
    return count
}

let begin = "hit"
let target = "cog"
let words = ["hot", "dot", "dog", "lot", "log", "cog"]
print(solution(begin, target, words))

