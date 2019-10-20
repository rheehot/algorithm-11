//
//  10799.cpp
//  스택
//
//  Created by 이동영 on 19/10/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//
#include <iostream>
#include <string>
#include <stack>


using namespace std;

// https://www.acmicpc.net/problem/1406

int main_10799(int argc, const char * argv[]) {
    
    ios_base::sync_with_stdio(false);
    
    string input;
    cin >> input;
    stack<int> s;
    
    int count = 0;
    
    for (int i=0; i<input.size(); i++) {
        if (input[i] == '(') {
            s.push(i);
        } else {
            if (i - s.top() == 1) {
                s.pop();
                count += s.size();
            } else {
                s.pop();
                count++;
            }
        }
    }
    cout << count;
    
    return 0;
}
