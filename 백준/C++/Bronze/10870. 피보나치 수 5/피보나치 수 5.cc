#include <iostream>
using namespace std;

int main(void){
    int n;
    cin >> n;
    int arr[n+1];
    arr[0] = 0;
    arr[1] = 1;
    int result = 0;
    for (int i = 0; i <= n; i++) {
        if (i != 0 && i != 1) {
            arr[i] = arr[i-1] + arr[i-2];
        }
    }
    cout << arr[n];
    return 0;
}