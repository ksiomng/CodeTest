#include <iostream>
#include <stack>
using namespace std;

int main() {
    ios::sync_with_stdio(false); cin.tie(NULL); cout.tie(NULL);
    int num;
    cin >> num;
    stack<pair<int, int>> s;
    
    for (int i = 1; i <= num; i++){
        int a;
        cin >> a;
        
        if (i == 1){
            cout << "0 ";
            s.push({a,i});
            continue;
        }
        while (!s.empty()){
            if (s.top().first < a){
                s.pop();
            }
            else if ((s.top().first > a)){
                cout << s.top().second << " ";
                s.push({a,i});
                break;
            }
        }
        if (s.empty()){
            cout << "0 ";
            s.push({a,i});
        }
    }
    return 0;
}
