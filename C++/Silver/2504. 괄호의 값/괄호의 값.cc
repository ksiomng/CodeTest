#include <iostream>
#include <stack>
using namespace std;

int main() {
    ios::sync_with_stdio(false);
    stack<char> st;
    string input;
    cin >> input;
    int temp = 1, cnt = 0;
    
    
    for (int i = 0; i < input.size(); i++){
        if (input[i] == '('){
            st.push('(');
            temp *= 2;
        }
        else if (input[i] == ')'){
            if (st.empty() || st.top() != '('){
                cout << "0\n";
                return 0;
            }
            else if (input[i-1] == '('){
                cnt += temp;
                temp /= 2;
                st.pop();
            }
            else {
                temp /= 2;
                st.pop();
            }
        }
        else if (input[i] == '['){
            st.push('[');
            temp *= 3;
        }
        else if (input[i] == ']'){
            if (st.empty() || st.top() != '['){
                cout << "0\n";
                return 0;
            }
            else if (input[i-1] == '['){
                cnt += temp;
                temp /= 3;
                st.pop();
            }
            else {
                temp /= 3;
                st.pop();
            }
        }
    }
    if(!st.empty()) cnt = 0;
    cout << cnt << "\n";
    
    return 0;
}
