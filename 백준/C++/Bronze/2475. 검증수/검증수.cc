#include <iostream>
using namespace std;

int main() {
    int arr[5];
    int num = 0;
    for (int i = 0; i < 5; i++){
        cin >> arr[i];
        
        num += arr[i]*arr[i];
    }
    cout << num%10;
            
    return 0;
}
