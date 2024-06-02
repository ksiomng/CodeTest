#include <stack>
#include <iostream>
#include <string>
using namespace std;

int main() {
    string a = "";
    stack<char> st;

    while(getline(cin, a)){
        
        if (a == ".")
            return 0;
        
        for (int i = 0; i < a.size(); i++) {
            
            if (a[i] == '(')
                st.push(a[i]);
            
            else if (a[i] == '[')
                st.push(a[i]);

            else if (a[i] == ')'){
                if (st.empty() == 1 || st.top() != '('){
                    cout << "no" << "\n";
                    break;
                }
                else
                    st.pop();
            }
            
            else if (a[i] == ']'){
                if (st.empty() == 1 || st.top() != '['){
                    cout << "no" << "\n";
                    break;
                }
                else
                    st.pop();
            }
            
            else if (a[i] == '.') {
                if (st.empty() == 1) {
                    cout << "yes" << "\n";
                    break;
                }
                else {
                    cout << "no" << "\n";
                    break;
                }
            }
        }
        while (!st.empty()){
            st.pop();
        }
    }

    return 0;
}
