//
//  main.swift
//  추석트래픽
//
//  Created by 이동영 on 2020/01/25.
//  Copyright © 2020 이동영. All rights reserved.
//

import Foundation

extension String {
    var range: NSRange {
        return NSRange(location: 0, length: self.count)
    }
}

// MARK: - Log

class Task {
    var startDate: Date {
        return endDate - processingTime
    }
    let endDate: Date
    let processingTime: TimeInterval
    static let logger = LogFormatter()
    
    init(endDate: Date, processingTime: TimeInterval) {
        self.endDate = endDate
        self.processingTime = processingTime
    }
    
    convenience init(string: String) {
        let endDate = Task.logger.getDate(string: string)
        let processingTime = Task.logger.getSecond(string: string)
        self.init(endDate: endDate, processingTime: processingTime)
    }
}

// MARK: - LogFormatter

class LogFormatter {
    
    let dateRegex = try! NSRegularExpression(pattern: "\\d{4}-\\d{2}-\\d{2} \\d{2}:\\d{2}:\\d{2}.\\d{0,3}")
    let processingTimeRegex = try! NSRegularExpression(pattern: "[0-9.]+s")
    
    
    func getDate(string: String) -> Date {
        let dateRange = dateRegex.firstMatch(in: string, range: string.range)!.range
        let dateString = NSString(string: string).substring(with: dateRange)
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss.SSS"
        return dateFormatter.date(from: dateString)!
    }
    
    func getSecond(string: String) -> TimeInterval {
        let secondRange = processingTimeRegex.firstMatch(in: string, range: string.range)!.range
        let secondString = NSString(string: string).substring(with: secondRange).dropLast(1)
        return TimeInterval(secondString)!
    }
}



func solution(_ lines: [String]) -> Int {
    let tasks = lines.map { Task(string: $0) }
    var currentDate = tasks.first!.startDate
    var taskQueue = [Task]()
    var maxCount = 0
    
    for task in tasks {
        taskQueue.append(task)
        currentDate = task.startDate
        taskQueue.removeAll { $0.endDate < currentDate }
        maxCount = max(maxCount, taskQueue.count)
    }
    
    return maxCount
}

let input = [ "2016-09-15 20:59:57.421 0.351s",
              "2016-09-15 20:59:58.233 1.181s",
              "2016-09-15 20:59:58.299 0.8s",
              "2016-09-15 20:59:58.688 1.041s",
              "2016-09-15 20:59:59.591 1.412s",
              "2016-09-15 21:00:00.464 1.466s",
              "2016-09-15 21:00:00.741 1.581s",
              "2016-09-15 21:00:00.748 2.31s",
              "2016-09-15 21:00:00.966 0.381s",
              "2016-09-15 21:00:02.066 2.62s"]

print(solution(input))

//let a = "2016-09-15 20:59:57.421 0.351s"
//
////let g = LogFormatter()
////print(g.getDate(string: a))
////print(g.getSecond(string: a))
//
//
//let qa = "2016-09-15 21:00:00.311"
//
//let da = DateFormatter()
//da.locale = Locale(identifier: "ko_kr")
//da.timeZone = TimeZone(abbreviation: "GMT")
//da.dateFormat = "YYYY-MM-DD HH:mm:ss.SSS"
//print(da.date(from: qa) as! NSDate)
//
//let birthday = "2014-09-21 21:00:00"
//let formatterGet = DateFormatter()
//formatterGet.dateFormat = "yyyy-MM-dd HH:mm:ss"
//let date = formatterGet.date(from: birthday)
//
//print(date)
