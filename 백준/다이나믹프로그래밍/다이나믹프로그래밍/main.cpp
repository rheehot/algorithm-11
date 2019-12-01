//
//  main.cpp
//  다이나믹프로그래밍
//
//  Created by 이동영 on 22/10/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//
#include <iostream>

using namespace std;

int __memo[12];

int main(int argc, const char * argv[]) {
    int count;
    int n;
    int outut[12];
    __memo[1] = 1;
    __memo[2] = 2;
    __memo[3] = 4;
    scanf("%d",&count);
    
    for (int j=count; j>0;j--) {
        scanf("%d",&n);
        if (n<=3) {
            break;
        }
        for(int i=4; i<=n; i++){
            __memo[i] = __memo[i-1] + __memo[i-2] + __memo[i-3];
        }
    }
    return 0;
}
