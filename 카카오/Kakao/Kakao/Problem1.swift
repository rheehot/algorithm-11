//
//  Problem1.swift
//  Kakao
//
//  Created by 이동영 on 2019/11/09.
//  Copyright © 2019 이동영. All rights reserved.
//

import Foundation

enum Problem1 {

func solution(_ board:[[Int]], _ moves:[Int]) -> Int {
    
    var board = board
    var count = 0
    var stack = [Int]() {
        didSet {
            guard
                let newLast = stack.last,
                let oldLast = oldValue.last,
                newLast == oldLast
                else {  return }
            _ = stack.popLast()
            _ = stack.popLast()
            count += 2
            }
        }
    
    
    for move in moves {
        if let poped = pop(board: &board, row: move) {
            stack.append(poped)
        }
    }
    
    return count
}

func pop(board: inout [[Int]], row: Int) -> Int? {
    
    for y in board.indices {
        let doll = board[y][row-1]
        if doll != 0 {
            board[y][row-1] = 0
            return doll
        }
    }
    return nil
}
}
