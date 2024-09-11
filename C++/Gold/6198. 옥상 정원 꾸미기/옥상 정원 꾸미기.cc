#include <iostream>
#include <stack>
using namespace std;

int main() {
    ios::sync_with_stdio(false); cin.tie(0);
    int N;
    long long cnt = 0;
    cin >> N;
    stack<int> s;
    
    for (int i = 0; i < N; i++){
        int height;
        cin >> height;
        
        while (!s.empty() && s.top() <= height){
            s.pop();
        }
        if (s.empty()){
            s.push(height);
        }
        else if (s.top() > height){
            cnt += s.size();
            s.push(height);
        }
    }
    cout << cnt;
    return 0;
}
