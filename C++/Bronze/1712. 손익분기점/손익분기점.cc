#include <iostream>
using namespace std;

int main() {
    int A, B, C;
    cin >> A >> B >> C;
    int F = C - B;
    
    if (F <= 0){
        cout << "-1" << "\n";
    }

    else{
        cout << (A / F) + 1 <<  "\n";
    }
    return 0;
}
