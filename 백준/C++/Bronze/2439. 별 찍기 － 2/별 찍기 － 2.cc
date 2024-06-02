#include <iostream>
using namespace std;

int main() {
    int A;
    cin >> A;
    
    for (int i = 0; i < A; i++){
        
        for (int j = (A-2); j >= i; j--){
            cout << " ";
        }
        for (int p = 0; p <= i; p++){
            cout << "*";
        }
        cout << "\n";
    }
    return 0;
}
