//
//  main.swift
//  카카오톡 오픈채팅방
//
//  Created by 이동영 on 25/08/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

import Foundation

func solution(_ record: [String]) -> [String] {
    var userId = [String: String]()
    var results = [(user: String, behavior: String)]()
    let logs = record
        .map {  $0.split(separator: " ").map { String($0) } }
    logs.forEach { log in
        switch log[0] {
        case "Enter":
            userId[log[1]] = log[2]
            results.append((log[1],"님이 들어왔습니다."))
        case "Leave":
            results.append((log[1],"님이 나갔습니다."))
        case "Change":
            userId[log[1]] = log[2]
        default: ()
        }
    }
    
    return results.map { userId[$0.user]!+$0.behavior }
}
