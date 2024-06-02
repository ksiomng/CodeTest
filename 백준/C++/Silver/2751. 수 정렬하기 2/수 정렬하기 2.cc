#include <iostream>
#include <algorithm>
using namespace std;

int main() {
    int x;
    int cnt = 0;
    cin >> x;
    int arr[x];
    for (int i = 0; i < x; i++) {
        cin >> arr[i];
    }
    sort(arr,arr+x);
    for (int i = 0; i < x; i++) {
        cout << arr[i] << "\n";
    }
    return 0;
}
