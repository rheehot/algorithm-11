//
//  main.cpp
//  다이나믹프로그래밍
//
//  Created by 이동영 on 22/10/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//
#include <iostream>

using namespace std;

int sticker[2][100001];

int main(int argc, const char * argv[]) {
    int t;
    cin >> t;
    while(t--) {
        int n;
        cin >> n;
        for (int i=1; i<=n; i++) {
            cin >> sticker[0][i];
        }
        for (int i=1; i<=n; i++) {
            cin >> sticker[1][i];
        }
        
    }
    return 0;
}
