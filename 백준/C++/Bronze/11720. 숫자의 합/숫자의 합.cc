#include <iostream>
#include <string>

using namespace std;

int main(){
    ios::sync_with_stdio(false); cin.tie(NULL); cout.tie(NULL);
    int input;
    string total;
    cin >> input;
    cin >> total;
    int sum = 0;
    for (int i = 0; i < input; i++) {
        sum += (total[i] - 48);
    }
    cout << (int)sum << "\n";
    
    return 0;
}

