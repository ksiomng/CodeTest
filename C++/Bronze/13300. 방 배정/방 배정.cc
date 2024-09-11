#include <iostream>
using namespace std;

int main() {
    ios::sync_with_stdio(false);
    int a, b, c, d;
    cin >> c >> d;
    
    int num = 0;
    int arr[3][7] = {0,};
    
    for (int i = 0; i < c; i++){
        cin >> a >> b;
        arr[a][b] += 1;
    }
    for (int i = 0; i < 3; i++){
        for (int j = 0; j < 7; j++){
            if ((arr[i][j]) % d == 0){
                num += (arr[i][j]/d);
            }
            else
                num += (arr[i][j]/d + 1);
        }
    }
    cout << num;
    
    return 0;
}
