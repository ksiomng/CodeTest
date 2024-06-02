#include <iostream>
#include <string>
using namespace std;

int main() {
    string input;
    int num;
    int cnt = 0;

    cin >> num;
    for (int i = 0; i < num; i++){
        bool check = true;
        cin >> input;
        
        for (int i = 0; i < input.size(); i++){
            if (input[i] != input[i+1]){
                for (int j = 0; j < i+1; j++){
                    if (input[j] == input[i+1]){
                        check = false;
                    }
                }
            }
        }
        if (check){
            cnt++;
        }
    }

    cout << cnt << endl;
    return 0;
}
