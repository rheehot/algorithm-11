//
//  main.cpp
//  덩치
//
//  Created by 이동영 on 24/09/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

#include <iostream>
#include <vector>
#include <string>
#include <stdlib.h>

using namespace std;

int main(int argc, const char * argv[]) {
    int size;
    scanf("%d", &size);
    
    vector<pair<int, int>> w;
    vector<int> result;
    result.resize(size,1);
    for(int i=0;i<size;i++) {
        int weight;
        int height;
        scanf("%d %d",&weight,&height);
        w.push_back(make_pair(weight, height));
    }
    
    for(int i=0;i<size;i++) {
        for(int j=0;j<size;j++) {
            if (w[i].first > w[j].first && w[i].second > w[j].second) {
                result[j]++;
            }
        }
    }
    
    for(int i=0;i<size;i++) {
        printf("%d ", result[i]);
    }
    return 0;
}
