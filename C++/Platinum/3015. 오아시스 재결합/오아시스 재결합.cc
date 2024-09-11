#include <iostream>
#include <stack>
using namespace std;

int main() {
    ios::sync_with_stdio(false);
    int num;
    cin >> num;
    stack<pair<int, int>> s;
    long long cnt = 0;
    for (int i = 0; i < num; i++){
        int input;
        cin >> input;
        
        while (!s.empty() && s.top().first < input){
            cnt += s.top().second;
            s.pop();
        }
        
        if (s.empty()){
            s.push({input,1});
        }
        
        else if (s.top().first == input){
            int temp = s.top().second;
            s.pop();
            if (!s.empty()) cnt++;
            
            cnt += temp;
            s.push({input,temp+1});
          }
        
        else if (s.top().first > input){
            cnt += 1;
            s.push({input,1});
        }
    }
    
    cout << cnt;
    return 0;
}
