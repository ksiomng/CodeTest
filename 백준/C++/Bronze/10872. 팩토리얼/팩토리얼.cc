#include <iostream>
using namespace std;

int main(){
    ios_base::sync_with_stdio(0);cin.tie(0);
    int n;
    int result = 1;
    cin >> n;
    for (int i = n; i > 0; i--){
        result *= i;
    }
    cout << result;
    return 0;
}
