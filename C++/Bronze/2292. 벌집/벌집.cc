#include <iostream>
using namespace std;

int main() {
    int num;
    cin >> num;
    
    int cnt = 1;
    int i = 1;
    
    while (num > i){
        i += (6 * cnt);
        cnt++;
    }
    
    cout << cnt;
    return 0;
}