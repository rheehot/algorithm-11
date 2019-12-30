//
//  Permutationg.swift
//  Extensions
//
//  Created by 이동영 on 2019/12/02.
//  Copyright © 2019 이동영. All rights reserved.
//

import Foundation

extension Array where Element: Comparable {
    enum Sorting {
        case ascending
        case descending
    }
    
    func allPermutation(_ sorting: Sorting) -> [[Element]] {
        var permutation = self.sorted(by: <)
        var result = [permutation]
        while permutation.nextPermutation() {
            switch sorting {
            case .ascending:
                result.append(permutation)
            case .descending:
                result.insert(permutation, at: 0)
            }
        }
        return result
    }
    
    mutating func nextPermutation() -> Bool {
        let n = self.count
        var i = n-1
        while i > 0 && self[i-1] >= self[i] {
            i -= 1
        }
        if i <= 0 {
            return false
        }
        var j = n-1
        while self[j] <= self[i-1] {
            j-=1
        }
        self.swapAt(i-1, j)
        j=n-1
        while i < j {
            self.swapAt(i, j)
            i += 1
            j -= 1
        }
        return true
    }
}
