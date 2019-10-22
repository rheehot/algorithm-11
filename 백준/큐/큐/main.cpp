//
//  main.cpp
//  큐
//
//  Created by 이동영 on 21/10/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

#include <iostream>
#include "queue"

using namespace std;

int main(int argc, const char * argv[]) {
    
    queue<int> q;
    
    int num;
    int interval;
    scanf("%d %d", &num, &interval);
    interval--;
    
    for (int i=1;i<=num;i++){
        q.push(i);
    }
    
    int cnt = 0;
    printf("<");
    while (q.size() != 1) {
        if (interval == cnt) {
            printf("%d, ",q.front());
            q.pop();
            cnt = 0;
        } else {
            q.push(q.front());
            q.pop();
            cnt++;
        }
    }
    printf("%d>",q.front());
    return 0;
}
