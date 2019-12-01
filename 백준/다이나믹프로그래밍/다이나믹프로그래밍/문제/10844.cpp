//
//  10844.cpp
//  다이나믹프로그래밍
//
//  Created by 이동영 on 2019/12/02.
//  Copyright © 2019 부엉이. All rights reserved.
//

#include <stdio.h>
#include <iostream>

using namespace std;

long long stair[101][10];

int main_10844(int argc, const char * argv[]) {
    int n;
    cin >> n;
    for (int i=1; i<=9; i++) stair[1][i] = 1;
    
    for(int i=2;i<=n;i++) {
        for(int j=0;j<10;j++) {
            stair[i][j] = 0;
            if(1<=j) stair[i][j] += stair[i-1][j-1];
            if(j<9) stair[i][j] += stair[i-1][j+1];
            stair[i][j]%=1000000000;
        }
    }
    long long result=0;
    for (int i=0; i<=9; i++) result += stair[n][i];
    cout << result%1000000000;
    return 0;
}
