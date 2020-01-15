//
//  main.swift
//  Remove Duplicates from Sorted Array
//
//  Created by 이동영 on 2020/01/15.
//  Copyright © 2020 이동영. All rights reserved.
//

import Foundation

func removeDuplicates(_ nums: inout [Int]) -> Int {
    var last = nums.first!
    var array = [last]
    
    for num in nums where num != last {
        array.append(num)
        last = num
    }
    
    nums = array
    
    return nums.count
}

