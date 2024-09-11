#include <iostream>
#include <string>
using namespace std;

int main(){
    ios::sync_with_stdio(false);
    string input;
    cin >> input;
    int cnt = 0;
    int l = 0;
        
    for (int i = 0; i < input.size(); i++){
        
        if (input[i] == '(' && input[i+1] == ')'){
            l += cnt;
            i++;
        }
        else if (input[i] == '(') cnt++;
        else if (input[i] == ')') {
            cnt--;
            l++;
        }
    }
    cout << l << "\n";
    return 0;
}
