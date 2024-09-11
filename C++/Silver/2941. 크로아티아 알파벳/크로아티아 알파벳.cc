#include <iostream>
#include <string>
using namespace std;

int main() {
    string input;
    int cnt = 0;
    cin >> input;
    
    for (int i = 0 ; i <input.size(); i++){
        
        if (input[i] == 'c' && input[i+1] == '='){
            cnt++;
            i++;
        }
        else if (input[i] == 'c' && input[i+1] == '-'){
            cnt++;
            i++;
        }
        else if (input[i] == 'd' && input[i+1] == 'z' && input[i+2] == '='){
            cnt++;
            i = i +2;
        }
        else if (input[i] == 'd' && input[i+1] == '-'){
            cnt++;
            i++;
        }
        else if (input[i] == 'l' && input[i+1] == 'j'){
            cnt++;
            i++;
        }
        else if (input[i] == 'n' && input[i+1] == 'j'){
            cnt++;
            i++;
        }
        else if (input[i] == 's' && input[i+1] == '='){
            cnt++;
            i++;
        }
        else if (input[i] == 'z' && input[i+1] == '='){
            cnt++;
            i++;
        }
        else{
            cnt++;
        }
    }
    
    cout << cnt << "\n";
    return 0;
}
