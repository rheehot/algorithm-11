//
//  main.cpp
//  더 맵게
//
//  Created by 이동영 on 10/10/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

#include <iostream>
#include <string>
#include <stdio.h>
#include <algorithm>
#include <bits/stdc++.h>
#include <vector>

using namespace std;

int solution(vector<int> scoville, int K) {
    priority_queue <int, vector<int>, greater<int> > minHeap;
    
    for(int i = 0; i < scoville.size(); i++) {
        minHeap.push(scoville[i]);
    }
    int answer = 0;
    int min1 = 0;
    int min2 = 0;
    int newValue = 0;
    while (minHeap.top() < K) {
        if (minHeap.size() < 2) {
            return -1;
        }
        min1 = minHeap.top();
        minHeap.pop();
        min2 = minHeap.top();
        minHeap.pop();
        newValue = min1 + (min2 * 2);
        minHeap.push(newValue);
        answer++;
    }
    return answer;
}
int main(int argc, const char * argv[]) {
    // insert code here...
    std::cout << "Hello, World!\n";
    return 0;
}
