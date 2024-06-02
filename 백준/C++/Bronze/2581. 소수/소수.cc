#include <iostream>
using namespace std;

int main(void){
    int m, n;
    cin >> m >> n;
    int sum = 0;
    int min = 0;
    
    if (m==1) {
        m = 2;
    }
    for (int i = m; i <= n; i++){
        bool a = true;
        for (int j = 2; j < i; j++){
            if (i % j == 0) {
                a = false;
            }
        }
        if (a==true) {
            if (min==0){
                min = i;
            }
            sum += i;
        }
    }
    if (sum == 0){
        cout << "-1";
        return 0;
    }
    cout << sum << "\n" << min;
    return 0;
}