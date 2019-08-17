//
//  main.swift
//  문자열 다루기 기본
//
//  Created by 이동영 on 18/08/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

import Foundation

func solution(_ s: String) -> Bool {
    return  Int(s) != nil && ( s.count == 4 || s.count == 6 )
}
