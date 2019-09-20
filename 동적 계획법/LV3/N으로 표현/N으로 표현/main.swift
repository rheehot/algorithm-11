//
//  main.swift
//  N으로 표현
//
//  Created by 이동영 on 20/09/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

import Foundation

var memoization = [Int: Int]()

func solution(_ N: Int, _ number: Int) -> Int {
    // 수: 횟수
        // 대상이 N보다 크면? -/
        if number > N {
            let x1 = number%N == 0 ? number/N : nil
            let x2 = number-N
            let x3 = N * 11
            let count1 = x1 != nil ? memoization[x1!] ?? solution(N, x1!) + 1 : nil;
            let count2 = memoization[x2] ??  solution(N, x2) + 1;
            let count3 = memoization[x3] ??  solution(N, x3) + 1;
            let result = [count1,count2,count3].compactMap{$0}.min()!
            memoization[N] = result
            return result
        }
        else if number == N {
            memoization[N] = 1
            return 1
        }
            // 대상이 N보다 작으면 +*
        else {
            let x1 = N-number
            let x2 = N%number == 0 ? N/number : nil
    
    
            let count1 = memoization[x1] ?? solution(N, x1) + 1;
            let count2 = x2 != nil ? memoization[x2!] ??  solution(N, x2!) + 1 : nil;
            let result = [count1,count2].compactMap{$0}.min()!
            memoization[N] = result
            return result
        }
}

func bench(benchFunc: () -> ()) {
    let startTime = CFAbsoluteTimeGetCurrent()
    benchFunc()
    let processTime = CFAbsoluteTimeGetCurrent() - startTime
    print("Process Time = \(processTime)")
}

print(solution(5, 12))
