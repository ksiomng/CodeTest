#include <iostream>
#include <string>
#include <deque>
using namespace std;

int main() {
    ios::sync_with_stdio(false);
    int num;
    cin >> num;
    
    while (num--){
        deque<char> N;
        string input;
        cin >> input;
        int cnt = 0;
        bool a = true;
        
        for (int i = 0; i < input.size(); i++){
             N.push_back(input[i]);
        }
        for (int i = 0; i < input.size(); i++){
            if (N.front() == '('){
                cnt++;
                N.pop_front();
            }
            else if (N.front() == ')'){
                cnt--;
                N.pop_front();
            }
            if (cnt < 0){
                a = false;
                break;
            }
        }
        if (a == false || cnt > 0) cout << "NO\n";
        else if (cnt == 0) cout << "YES\n";
        N.clear();
    }
    return 0;
}
