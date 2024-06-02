#include <iostream>
using namespace std;

int main() {
    ios::sync_with_stdio(false);
    
    int a;
    int arr[10001] = {0};
    cin >> a;
    
    for (int i = 0; i < a; i++){
        int b;
        cin >> b;
        arr[b] += 1;
    }
    
    for (int i = 0; i < 10001; i++){
        for (int j = 0; j < arr[i]; j++){
            cout << i << "\n";
        }
    }
    return 0;
}
