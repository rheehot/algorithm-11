//
//  11057.cpp
//  다이나믹프로그래밍
//
//  Created by 이동영 on 2019/12/02.
//  Copyright © 2019 부엉이. All rights reserved.
//
#include <iostream>

using namespace std;

int numbers[1001][10];

int main_11057(int argc, const char * argv[]) {
    int mod =  10007;
    int n;
    cin >> n;
    for(int i=0;i<=9;i++) { numbers[1][i] = 1; }
    
    for(int i=2;i<=n;i++) {
        for(int j=0;j<=9;j++) {
            numbers[i][j] = 0;
            for(int k=j;k<=9;k++) {
                numbers[i][j] += numbers[i-1][k];
            }
            numbers[i][j] %= mod;
        }
    }
    int result = 0;
    for(int i=0;i<=9;i++) { result+=numbers[n][i]; }
    cout<<result%mod<<endl;
    return 0;
}
