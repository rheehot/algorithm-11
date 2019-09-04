//
//  main.swift
//  후보키
//
//  Created by 이동영 on 26/08/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

import Foundation

func solution(_ relation: [[String]] ) -> Int {
    let 칼럼_수 = relation[0].count
    
    var 후보키들 = [[Int]]()
    for i in 1...칼럼_수 {
        var 키_조합 = 키조합만들기(키의수: i, 조합에_제외할_키: 후보키들, 칼럼수: 칼럼_수)
        print("키조합:'\(키_조합)")
        print("키의 수:'\(i)")
        for 키 in 0..<키_조합.count {
            
            let 판별할값 = 판별할_값만들기(테이블: relation, 키들: 키_조합[키])
            if 유일성판별하기(판별할_아이템:판별할값) {
                후보키들.append(키_조합[i])
                print("후보키 추가 :\(키_조합[i])")
            }
        }
    }
    print("후보키들:\(Set(후보키들))")
    return Set(후보키들).count
}

func 키조합만들기(키의수: Int, 조합에_제외할_키: [[Int]], 칼럼수: Int) -> [[Int]]{
    let 키의_조합 = 키만들기(키의수: 키의수, 미완성키: [[]], 시작키: 0, 칼럼수: 칼럼수)
    return  키의_조합.filter {
        !조합에_제외할_키.contains($0)
        
    }
}

func 키만들기(키의수: Int, 미완성키:[[Int]], 시작키: Int,칼럼수: Int) -> [[Int]] {
    var 더해질키:[[Int]] = []
    
    let 카운트 = 키의수 - (미완성키[0].count) + 1
    
    if 미완성키[0].count == 키의수 {
        return 미완성키
    }
    
    for 키 in 미완성키 {
        for i in (키.last ?? 0)..<칼럼수  {
            더해질키.append(키 )
            print(더해질키)
        }
    }
    
    for (index,value) in Array.init(시작키..<(칼럼수)).enumerated() {
        더해질키[index].append(value)
    }
    return 키만들기(키의수: 키의수, 미완성키: 더해질키, 시작키: 시작키+1,칼럼수:칼럼수)
    
}

func 판별할_값만들기(테이블: [[String]], 키들: [Int]) -> [String] {
    var 판별할_값 = [String]()
    for i in 0...테이블.count-1 {
        var 아이템 = ""
        for 키 in 키들 {
            아이템 += 테이블[i][키]
        }
        if 아이템 != "" {
            판별할_값.append(아이템)
        }
    }
    return 판별할_값
}

func 유일성판별하기(판별할_아이템:[String]) -> Bool {
    return  판별할_아이템.count == Set(판별할_아이템).count
}

protocol Alphabet: Equatable {
    var common: Int { get }
}

extension Alphabet {
    static func == (lhs: )
}

class A: Alphabet {
    var a = 3
}

class B: A {
    var b = 4
}

