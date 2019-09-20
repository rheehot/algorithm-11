//
//  main.cpp
//  조이스틱_C++
//
//  Created by 이동영 on 21/09/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

#include <string>
#include <algorithm>
#include <vector>

using namespace std;

int solution(string name) {
    int count = 0;
    int curser = 0;
    int first = 0,last=0;
    int start,end;
    bool d = true;
    string result;
    for(int i =0;i<name.size();i++) {
        result += 'A';
    }
    for(int i = 0; i<name.length();i++) {
        if (result[i] != name[i] && name[i] != 'A') {
            first = i;
            break;
        }
    }
    for(int j = (int)name.length()-1; j>0;j--) {
        if (result[j] != name[j] && name[j] != 'A') {
            last = j;
            break ;
        }
    }
    
    printf("first: %d, last: %d\n", first , last);
    if (first < name.length()-1-last || first == 0) {
        start = first;
        end = last;
        count += first;
    } else {
        start = last;
        end = first;
        count += name.length()-last;
    }
    printf("start: %d, end: %d\n", start , end);
    d = abs((int)name.length() - end + start) > abs(end - start);
    curser = start;
    while (name.compare(result)) {
        int diff = min(('Z'-name[curser])+1, name[curser]-'A');
        printf("curser: %d, %c\n",curser, name[curser]);
        count+=diff;
        result[curser] = name[curser];
        if (d) {
            if(curser+1 > name.length()-1 ) {
                curser = 0;
            } else {
                curser++;
            }
            count++;
        } else {
            
            if(curser-1 < 0 ) {
                curser = (int)name.length()-1;
            } else {
                curser--;
            }
            count++;
        } 
    }
    return --count;
}

int main(int argc, const char * argv[]) {
        string a = "JEROEN";
        printf("%d\n",solution(a));
        string b = "JAN";
        printf("%d\n",solution(b));
    string c =  "ABABAAAAAAABA";
    printf("%d\n",solution(c));
    return 0;
}
