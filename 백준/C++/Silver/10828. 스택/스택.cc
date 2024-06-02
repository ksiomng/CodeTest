#include <iostream>
#include <string>
#include <stack>
using namespace std;

int main() {
    ios::sync_with_stdio(false);
    int num;
    cin >> num;
    stack<int> N;
    
    while (num--){
        string input;
        cin >> input;
        
        if (input == "push"){
            int a;
            cin >> a;
            N.push(a);
        }
        else if (input == "top"){
            if (N.empty() == true) cout << "-1\n";
            else cout << N.top() << "\n";
        }
        else if (input == "size"){
            cout << N.size() << "\n";
        }
        else if (input == "pop"){
            if (N.empty() == true) cout << "-1\n";
            else {
                cout << N.top() << "\n";
                N.pop();
            }
        }
        else if (input == "empty"){
            if (N.empty() == true) cout << "1\n";
            else cout << "0\n";
        }
    }

    return 0;
}
