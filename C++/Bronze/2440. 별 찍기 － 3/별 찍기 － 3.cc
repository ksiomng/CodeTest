#include <iostream>
using namespace std;

int main() {
    int x;
    cin >> x;
    while (x--) {
        for (int j = x; j >= 0; j--) {
            cout << "*";
        }
        cout << "\n";
    }
    return 0;
}
