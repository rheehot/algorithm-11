//
//  main.swift
//  조이스틱
//
//  Created by 이동영 on 12/07/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

import Foundation

func solution(_ name:String) -> Int {
    let d: (Character,Character) -> Int = { a,b in abs(Int(a.asciiValue!)-Int(b.asciiValue!))}
    let m = { $0 > "M" ?  d("Z",$0)+1 : d("A",$0) }
    let ds = name.map { m($0) }
    let sum: ([Int]) -> Int = { $0.reduce(0){ $0 + $1 } }
    
    var ds1 = ds
    var count1 = 0
    
    var ds2 = [Int](ds.reversed())
    var count2 = 0
    
    for (i,d) in ds1.enumerated() {
        if( d != 0 ) {  ds1[i] = 0   }
        if sum(ds1) == 0  { break }
        else { count1+=1 }
    }
    for (i,d) in ds2.enumerated() {
        if( d != 0 ) {  ds2[i] = 0   }
        if sum(ds2) == 0  { break }
        else { count2+=1 }
    }
    return sum(ds) + [count1,count2].min()! //+ ( name.first! != "A" ? -1 : 0 )
}
print(solution("ACCADDAAA"))
