//
//  11727.cpp
//  다이나믹프로그래밍
//
//  Created by 이동영 on 2019/11/30.
//  Copyright © 2019 부엉이. All rights reserved.
//

#include <stdio.h>
using namespace std;

int _memo[1001];

int main_11727(int argc, const char * argv[]) {
    _memo[1] = 1;
    _memo[2] = 3;
    int x;
    scanf("%d",&x);
    if (x <= 2) {
        return _memo[x];
    }
    for(int i=3; i<=x; i++) {
        if (x > 2) {
        _memo[i] = 2 * _memo[i-2] + _memo[i-1];
        }
    }
    printf("%d", _memo[x]);
    return _memo[x];
}
