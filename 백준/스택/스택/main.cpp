//
//  main.cpp
//  스택
//
//  Created by 이동영 on 19/10/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

#include <iostream>
#include <cstring>
#include <stack>


using namespace std;

// https://www.acmicpc.net/problem/1406

int main(int argc, const char * argv[]) {
    
    char chars[600000];
    int cnt;
    stack<char> left,right;
    
    scanf("%s", chars);
    scanf("%d", &cnt);
    for(int i=0; i<(int)strlen(chars);i++) {
        left.push(chars[i]);
    }
    
    char instruction;
    
    while(cnt--) {
        scanf(" %c", &instruction);
        switch (instruction) {
            case 'L':
                if(left.empty()) { break; }
                right.push(left.top());
                left.pop();
                break;
            case 'D':
                if(right.empty()) { break; }
                left.push(right.top());
                right.pop();
                break;
            case 'B':
                if(left.empty()) { break; }
                left.pop();
                break;
            case 'P':
                char c;
                scanf(" %c", &c);
                left.push(c);
                break;
            default:
                break;
        }
    }
    
    while(!left.empty()) {
        right.push(left.top());
        left.pop();
    }
    
    while(!right.empty()) {
        printf("%c", right.top());
        right.pop();
    }
    
}
