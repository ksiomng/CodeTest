#include <iostream>
using namespace std;
 
int main() {
    int N;
    cin >> N;
    int a = N;
    int cnt = 0;

    while(a>=3){
        if (a%5 == 0){
            cnt += a/5;
            a = 0;
        }
        else {
            cnt++;
            a = a-3;
        }
    }
    if (a != 0) {
        cnt = -1;
    }
    cout << cnt;
    return 0;
}
