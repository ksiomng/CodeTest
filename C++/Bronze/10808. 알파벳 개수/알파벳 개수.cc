#include <iostream>
using namespace std;

int main() {
    ios::sync_with_stdio(false);

    int arr[27] = {0};
    string a;
    cin >> a;
    
    for (int i = 0; i < a.size(); i++){
        arr[(int)a[i]-97] += 1;
    }
    
    for (int i = 0; i < 26; i++){
        cout << arr[i] << " ";
    }
    return 0;
}
