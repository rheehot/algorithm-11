//
//  main.swift
//  문자열 내 마음대로 정렬하기
//
//  Created by 이동영 on 21/07/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

import Foundation

func solution(_ strings:[String], _ n:Int) -> [String] {
    return strings.sorted{
        let c1 = $0.suffix($0.count)[n]
        let c2 = $1.suffix($1.count)[n]
        return c1 == c2 ? $0 < $1 : c1 < c2
    }
}

let a = ["cbaaaa","bbb"]
print(solution(a, 0))
