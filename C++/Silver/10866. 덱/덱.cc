#include <iostream>
#include <string>
#include <deque>
using namespace std;

int main() {
    ios::sync_with_stdio(false);
    int num;
    cin >> num;
    deque<int> N;
    
    while (num--){
        string input;
        cin >> input;
        if (input == "push_front"){
            int a;
            cin >> a;
            N.push_front(a);
        }
        else if (input == "push_back"){
            int a;
            cin >> a;
            N.push_back(a);
        }
        else if (input == "pop_front"){
            if (N.empty() == true) cout << "-1\n";
            else {
                cout << N.front() << "\n";
                N.pop_front();
            }
        }
        else if (input == "pop_back"){
            if (N.empty() == true) cout << "-1\n";
            else {
                cout << N.back() << "\n";
                N.pop_back();
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
