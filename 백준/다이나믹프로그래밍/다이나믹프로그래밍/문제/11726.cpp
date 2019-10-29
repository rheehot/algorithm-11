//
//  11726.cpp
//  다이나믹프로그래밍
//
//  Created by 이동영 on 27/10/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

#include <stdio.h>
#include <iostream>

using namespace std;

int memo[1001];

int main_11726(int argc, const char * argv[]) {
    memo[0] = 1;
    memo[1] = 1;
    int n;
    scanf("%d", &n);
    for (int i = 2; i <= n; i++) {
        memo[i] = memo[i-1] + memo[i-2];
        memo[i] %= 10007;
    }
    printf("%d", memo[n]);
    
    return 0;
}
