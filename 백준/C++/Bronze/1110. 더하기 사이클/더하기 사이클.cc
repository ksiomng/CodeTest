#include <iostream>
using namespace std;
 
int main() {
    int a;
    int x, y, z;
    int cnt = 0;
    cin >> a;
    x = a;
    while(1) {
        y = (x/10) + (x%10);
        z = ((x%10)*10) + (y%10);
        cnt++;
        if (a==z) {
            break;
        }
        x = z;
    }
    cout << cnt;
    return 0;
}
