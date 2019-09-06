//
//  main.swift
//  CHUNK NORRIS
//
//  Created by 이동영 on 07/09/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

import Foundation

func toBinary(_ ascii : UInt8) -> [Int] {
    var result = [Int]()
    var 나머지 = Int(ascii)
    
    while 나머지 != 0 {
        result.append(나머지%2)
        나머지/=2
    }
    return result.reversed()
}

func solution(_ message: String) -> String {
    var binarys = [String]()
    for c in message {
        let ascii = c.asciiValue!
        let binary = toBinary(ascii).reduce("") { "\($0)\($1)" }
        binarys.append(binary)
    }
    
    let encodings = binarys.map { $0.map { $0 == "1" ? "0" : "00" }}
    var result = ""
    for encoding in encodings {
        print(encoding)
        var before = encoding.first!
        result += "\(before) "
        for i in encoding {
            if before == i { result += "0"}
            else {
                before = i
                result += " \(before) 0"
            }
        }
    }
    return result
}

print(solution("CC"))
