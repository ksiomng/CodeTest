#include <iostream>
#include <algorithm>
using namespace std;

int main() {
    int arr[3];
    
    while (cin >> arr[0] >> arr[1] >> arr[2]){
        sort(arr, arr+3);
        if (arr[0] == 0 && arr[1] == 0 && arr[2] == 0){
            return 0;
        }
        else if(arr[0] == arr[1] && arr[1] == arr[2] && arr[2] == arr[0]){
            cout << "wrong" <<  "\n";
        }
        else if ((arr[0] * arr[0]) + (arr[1] * arr[1]) == (arr[2] * arr[2])){
            cout << "right" << "\n";
        }
        else {
            cout << "wrong" <<  "\n";
        }
    }
    return 0;
}
