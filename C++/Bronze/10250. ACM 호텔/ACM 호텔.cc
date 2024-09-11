#include <iostream>
using namespace std;

int main() {
    
    int T, H, W, N;
    cin >> T;
    int arr[T];
    
    for(int i = 0; i < T; i++){
        cin >> H >> W >> N;
        if ( N % H == 0)
            arr[i] = H * 100 + (N / H);
        else
            arr[i] = (N % H) * 100 + (N / H + 1);
    }
    for(int i = 0; i < T; i++){
        cout << arr[i] << "\n";
    }
    
    return 0;
}
