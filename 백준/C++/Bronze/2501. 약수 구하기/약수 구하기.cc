#include <iostream>
#include <vector>
using namespace std;

int main()
{
    int n, k;
    cin >> n >> k;
    int arr[10000];

    int idx = 1;
    for (int i = 1; i <= n; i++) {
        if (n % i == 0) {
            arr[idx] = i;
            idx++;
        }
        if (idx > k) {
            break;
        }
    }
    if (arr[k] >= 0) cout << arr[k];
    else cout << "0";
    return 0;
}
