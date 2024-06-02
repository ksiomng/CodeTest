#include <iostream>
using namespace std;

int main() {
    int T, k, n;

    cin >> T;
    
    for(int i = 0; i < T; i++){
        cin >> k >> n;
        int arr[14] = {1,2,3,4,5,6,7,8,9,10,11,12,13,14};
        
        for (int i = 0; i < k; i++){
            int cnt = 0;
            for (int j = 0; j < n; j++){
                cnt += arr[j];
                arr[j] = cnt;
            }
        }
        
        cout << arr[n-1] << "\n";
    }
    
    return 0;
}
