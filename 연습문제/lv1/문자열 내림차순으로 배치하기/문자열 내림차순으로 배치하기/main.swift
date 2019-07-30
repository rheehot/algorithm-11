//
//  main.swift
//  문자열 내림차순으로 배치하기
//
//  Created by 이동영 on 21/07/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

import Foundation

func solution(_ s:String) -> String {
    return String(s.sorted(by: >))
}
