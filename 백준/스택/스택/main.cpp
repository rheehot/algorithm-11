//
//  main.cpp
//  스택
//
//  Created by 이동영 on 19/10/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

#include <iostream>
#include <string>

using namespace std;

string validate(string s) {
    int count = 0;
    
    for (int i = 0; i < s.size(); i++) {
        if (s[i] == '(') {
            count++;
        } else {
            count--;
        }
        if (count == 0) {
            return "NO";
        }
    }
    
    return count == 0 ? "YES" : "NO";
}

int main(int argc, const char * argv[]) {
    
    ios_base::sync_with_stdio(false);
    
    int n;
    cin >> n;
    
    while(n--) {
        string s;
        cin >> s;
        cout << validate(s) << '\n';
    }
    
    return 0;
}
