#include <iostream>
using namespace std;

int main() {
    int a, b, A, B, min;
    cin >> a >> b;
    
    if (a > b){
        A = a;
        B = b;
    }
    else {
        A = b;
        B = a;
    }
    
    if (A % B == 0){
        min = B;
    }
    else {
        int C = A%B;
        while (C != 0){
            A = B;
            B = C;
            C = A%B;
        }
    }
    cout << B << "\n" << (a*b)/B;
    
    return 0;
}
