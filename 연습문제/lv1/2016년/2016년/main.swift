//
//  main.swift
//  2016년
//
//  Created by 이동영 on 19/07/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

import Foundation
//https://programmers.co.kr/learn/courses/30/lessons/12901

func solution(_ a:Int, _ b:Int) -> String {
    let days = [ "SUN","MON","TUE","WED","THU","FRI","SAT" ]
    let daysPerMonth = [31,29,31,30,31,30,31,31,30,31,30,31]
    return  days[(daysPerMonth[0..<a-1].reduce(0){$0+$1}+b+4)%7]
}
