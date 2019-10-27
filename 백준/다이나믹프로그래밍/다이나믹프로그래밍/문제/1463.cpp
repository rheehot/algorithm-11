//
//  1463.cpp
//  다이나믹프로그래밍
//
//  Created by 이동영 on 22/10/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

#include <iostream>

using namespace std;

int d[1000001];

int go(int n) {
    if (n == 1) {
        d[1] = 0;
        return 0;
    }
    if (n > 1) {
        d[n] = go(n-1) + 1;
    }
    if (n % 2 == 0) {
        d[n] = min(d[n], go(n/2) + 1);
    }
    if (n % 3 == 0) {
        go(n%3);
        d[n] = min(d[n], go(n/3) + 1);
    }
    return d[n];
}

int main_1463(int argc, const char * argv[]) {
    int n;
    scanf("%d", &n);
    printf("%d",go(n));
    return 0;
}

