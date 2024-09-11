#include <iostream>
#include <string>
#include <vector>

using namespace std;

bool arr[10001];

int selfNum(int a){ //(int a = [매개]변수)
    int sum = a;
    while (1) { // 계속 반복
        sum += a%10;
        a = a/10;
        if (a == 0) break;
    }
    return sum;
}

int main(){
    ios::sync_with_stdio(false); cin.tie(NULL); cout.tie(NULL);
    
    for(int i=1; i<10001; i++){
        int n = selfNum(i);
        if(n < 10001) arr[n] = true;
    }
    
    for(int i=1; i<10001; i++){
        if(!arr[i]) cout << i << "\n";
    }
    
    return 0;
}
