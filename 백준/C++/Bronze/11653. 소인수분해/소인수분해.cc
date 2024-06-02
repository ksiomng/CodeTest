#include <iostream>
using namespace std;

int main(void){
    int m;
    cin >> m;
    for (int i = 2; i < m; i++) {
        while (m%i == 0) {
            cout << i <<"\n";
            m /= i;
        }
    }
    if (m > 1) {
        cout << m;
    }
    return 0;
}