#include <iostream>
using namespace std;
 
int main() {
    int n, cnt;
    cin >> n;
    if (n % 4 == 0) {
        cnt = n/4;
    }
    else {
        cnt = n/4 + 1;
    }
    for (int i = 0; i < cnt; i++) {
        cout << "long ";
    }
    cout << "int";
 
    return 0;
}
