#include <iostream>
#include <vector>
#include <algorithm>
#include <string>
#include<deque>
using namespace std;

int main() {
    ios::sync_with_stdio(false);
    cin.tie(0);
    cout.tie(0);
    int n,t;

    cin >> t;
    while (t--) {
        string order,str;
        bool reverse=false, error=false;
        deque<int> dq;
        cin >> order;
        cin >> n;
        cin >> str;
        string s = "";
        for (int i = 0; i<str.length();i++) {
            if (isdigit(str[i])) {
                s += str[i];
            }
            else {
                if (!s.empty()) {
                    dq.push_back(stoi(s));
                    s = "";
                }
            }
        }
        for(int i =0; i < order.size(); ++i) {
            if (order[i] == 'R') {
                if (reverse == true)
                    reverse = false;
                else
                    reverse = true;
            }
            else if (order[i] == 'D') {
                if (dq.empty() == true) {
                    cout << "error" << '\n';
                    error = true;
                    break;
                }
                if (reverse == true)
                    dq.pop_back();
                else
                    dq.pop_front();
            }
        }
        if (error == false) {
            cout << '[';
            if (reverse == true && dq.empty() == false) {
                for (auto o = dq.rbegin(); o != dq.rend(); o++) {
                    if (o == dq.rend() - 1)
                        cout << *o;
                    else
                        cout << *o << ',';
                }
            }
            else if (reverse == false && dq.empty() == false){
                for (auto o = dq.begin(); o != dq.end(); o++) {
                    if (o == dq.end() - 1)
                        cout << *o;
                    else
                        cout << *o << ',';
                }
            }
            cout <<"]\n";
        }

    }
}
