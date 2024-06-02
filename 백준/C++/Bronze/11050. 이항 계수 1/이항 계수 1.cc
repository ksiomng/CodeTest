#include <iostream>
using namespace std;

int math(int n, int k){
    
    int m = 1, b = 1;
    
    for (int i = n-k; i > 0; i--){
        m *= i;
    }
    for (int i = k; i > 0; i--){
        m *= i;
    }
    for (int i = n; i > 0; i--){
        b *= i;
    }
    return b/m;
}

int main() {
    ios::sync_with_stdio(false);
    
    int a, b;
    cin >> a >> b;
    cout << math(a, b);
    
    return 0;
}

