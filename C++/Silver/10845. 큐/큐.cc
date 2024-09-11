#include <iostream>
#include <string>
#include <queue>
using namespace std;

int main() {
    ios::sync_with_stdio(false);
    int num;
    cin >> num;
    queue<int> N;
    
    while (num--){
        string input;
        cin >> input;
        
        if (input == "push"){
            int a;
            cin >> a;
            N.push(a);
        }
        else if (input == "pop"){
            if (N.empty() == true) cout << "-1\n";
            else {
                cout << N.front() << "\n";
                N.pop();
            }
        }
        else if (input == "front"){
            if (N.empty() == true) cout << "-1\n";
            else cout << N.front() << "\n";
        }
        else if (input == "back"){
            if (N.empty() == true) cout << "-1\n";
            else cout << N.back() << "\n";
        }
        else if (input == "size"){
            cout << N.size() << "\n";
        }
        else if (input == "empty"){
            if (N.empty() == true) cout << "1\n";
            else cout << "0\n";
        }
    }

    return 0;
}
