//
//  프로그래밍1.swift
//  카카오BLIND
//
//  Created by 이동영 on 07/09/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

import Foundation

func solution1(_ s: String) -> Int {
    var num = [Int]()
    
    for unit in 1..<s.count {
        print(unit)
        num.append(sss(s,unit))
    }
    return num.min()!
}

func sss(_ target: String,_ unit: Int) -> Int {
    var 결과 = ""
    var 문자배열 = target.map { $0 as Character }
    var 이터레이터 = target.makeIterator()
    var 문자큐 = [Character]()
    var 이미탐색 = 0
    flag: for _ in 0..<문자배열.count {
        
        let 탐색시작점 = 이미탐색
        
        while 문자큐.count < unit,
            let 문자 = 이터레이터.next() {
            문자큐.append(문자)
        }
        if 문자배열.count < 탐색시작점 { break }
        
        if 문자큐.count < unit {
            결과 += String(문자큐)
            break flag
        }
        
        let 탐색할문자열 = 문자배열[탐색시작점...]
        
        var 범위 = 탐색시작점..<탐색시작점 + unit
        var 번호 = 0
        var 횟수 = 0
        
        if 탐색할문자열.count < unit {
            결과 += 탐색할문자열
            continue flag
        }
        
        print("\(탐색할문자열)")
        print("\(범위)")
        print( "문자큐: \(문자큐) \n탐색 범위: \([Character](탐색할문자열[범위]))")
        while 문자큐 == [Character](탐색할문자열[범위]) {
            번호 += 1
            횟수 += 1
            print( " \(횟수)=== 문자큐: \(문자큐) 탐색 범위: \([Character](탐색할문자열[범위])) \(범위)")
            
            범위 = (탐색시작점 + (번호 * unit))..<min(탐색시작점 + (((번호+1) * unit)), 문자배열.count)
            if 탐색할문자열.count <= unit {
                결과 += 탐색할문자열
                continue flag
            }
            
        }
        
        if (횟수 == 1 || 횟수 == 0) && 횟수 != unit {
            번호 = 0
            if !문자큐.isEmpty { 결과 += 문자큐.removeFirst().description }
        }
        
        else {
            번호 = 0
            let 횟수String = 횟수 == 1 ? "" : "\(횟수)"
            결과 += "\(횟수String)\(String(문자큐))"
            for _ in 0..<(문자큐.count)*(횟수-1) { _ = 이터레이터.next() }
            문자큐.removeAll()
            이미탐색 += (횟수) * unit
            횟수 = 0
        }
        if [Character](탐색할문자열[범위]).isEmpty { break flag }
    }
    print(결과)
    return 결과.count
}
