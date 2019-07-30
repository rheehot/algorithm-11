//
//  main.swift
//  두 정수 사이의 합
//
//  Created by 이동영 on 13/07/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

import Foundation

func solution(_ a:Int, _ b:Int) -> Int64 {
    return Int64((b > a ? Array(a...b) : Array(b...a)).reduce(0){$0+$1})
}

