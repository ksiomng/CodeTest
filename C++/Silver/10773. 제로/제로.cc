#include <iostream>
#include <stack>
using namespace std;

int main() {
    ios::sync_with_stdio(false); cin.tie(0);
    int cnt, num;
    int a = 0;
    cin >> cnt;
    stack<int> S;
    while (cnt--){
        cin >> num;
        
        if(num == 0){
            S.pop();
        }
        else {
            S.push(num);
        }
    }
    
    while(!S.empty()){
        a += S.top();
        S.pop();
    }
    cout << a << "\n";
    return 0;
}
