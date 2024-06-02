#include <queue>
#include <iostream>
#include <string>
using namespace std;

int main() {
    
    ios::sync_with_stdio(false);
    cin.tie(NULL);
    
    int cnt, num;
    string input;
    cin >> cnt;
    queue<int> qu;
    
    for (int i = 0; i < cnt; i++){
        cin >> input;
        if (input == "push"){
            cin >> num;
            qu.push(num);
        }
        else if (input == "pop"){
            if (qu.empty() == 0){
                cout << qu.front() << "\n";
                qu.pop();
            }
            else
                cout << -1 << "\n";
        }
        else if (input == "front"){
            if (qu.empty() == 0)
                cout << qu.front()<< "\n";
            else
                cout << -1<< "\n";
        }
        else if (input == "back"){
            if (qu.empty() == 0)
                cout << qu.back()<< "\n";
            else
                cout << -1<< "\n";
        }
        else if (input == "size"){
            cout << qu.size()<< "\n";
        }
        else if (input == "empty"){
            cout << qu.empty()<< "\n";
        }
    }
    return 0;
}
