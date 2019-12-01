//
//  2193.cpp
//  다이나믹프로그래밍
//
//  Created by 이동영 on 2019/12/01.
//  Copyright © 2019 부엉이. All rights reserved.
//

#include <stdio.h>
#include <iostream>

using namespace std;

long long primaryNumber[91];

int main_2193(int argc, const char * argv[]) {
    int n;
    cin >> n;
    primaryNumber[1] = 1;
    primaryNumber[2] = 1;
    for(int i=1;i<=n;i++) {
        if (i<=2) { continue; }
        primaryNumber[i] = primaryNumber[i-1] + primaryNumber[i-2];
    }
    cout<<primaryNumber[n]<<endl;
    return 0;
}
