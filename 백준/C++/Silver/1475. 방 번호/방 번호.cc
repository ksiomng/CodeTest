#include <iostream>
using namespace std;

int main() {
    ios::sync_with_stdio(false);
    int max = 0;
    int num;
    cin >> num;
    int arr[10] = {0};
    
    while (num > 0){
        arr[num % 10] += 1;
        num = num/10;
    }
    
    if ((arr[6] + arr[9])%2 == 0){
        arr[6] = (arr[6] + arr[9])/2;
        arr[9] = arr[6];
    }
    else {
        arr[6] = (arr[6] + arr[9])/2;
        arr[9] = arr[6] + 1;
    }
    
    for (int i = 0; i < 10; i++){
        if (arr[i] > max)
            max = arr[i];
    }
    
    cout << max;
    return 0;
}
