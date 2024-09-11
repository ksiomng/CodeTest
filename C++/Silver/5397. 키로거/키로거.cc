#include <iostream>
#include <string>
#include <list>

using namespace std;

int main() {
    ios::sync_with_stdio(false);

    int num;
    cin >> num;
    
    while (num--){
        string L;
        cin >> L;
        list<char> K;
        list<char>::iterator iter = K.end();
        
        for (int i = 0; i < L.size(); i++){
            
            if (L[i] == '<'){
                if (iter != K.begin()) iter--;
            }
            else if (L[i] == '>'){
                if (iter != K.end()) iter++;
            }
            else if (L[i] == '-'){
                if (iter != K.begin()) iter = K.erase(--iter);
            }
            else {
                K.insert(iter, L[i]);
            }
        }
        
        for (auto iter = K.begin(); iter != K.end(); iter++) cout << *iter;
        K.clear();
        cout << "\n";
    }
    return 0;
}
