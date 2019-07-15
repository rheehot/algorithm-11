//
//  main.swift
//  이상한 문자 만들기
//
//  Created by 이동영 on 15/07/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//
import Foundation

func solution(_ s:String) -> String {
    var chars = s.map { $0 }
    for (i,c) in chars.enumerated() {
        chars[i] = i % 2 == 0 ?  Character(c.uppercased()) : Character(c.lowercased())
        if c == " " {   return chars[0...i].reduce(""){ $0 + "\($1)" } + solution(String(s.suffix(s.count-1-i)))  }
    }
    return chars.reduce(""){ $0 + "\($1)" }
}
