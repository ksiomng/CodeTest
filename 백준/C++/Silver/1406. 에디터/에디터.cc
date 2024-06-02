#include <iostream>
#include <string>
#include <list>
using namespace std;

int main() {
    ios::sync_with_stdio(false);
    string N;
    char input;
    cin >> N;
    
    int num;
    cin >> num;
    list<char> M;
    list<char>::iterator iter = M.end();
    
    for (int i = 0; i < N.size(); i++){
        M.insert(iter, N[i]);
    }
    while (num--){
        cin >> input;
        char word;
        switch (input) {
            case 'L':
                if (iter != M.begin()) iter--;
                break;
            case 'D':
                if (iter != M.end()) iter++;
                break;
            case 'B':
                if (iter != M.begin()) iter = M.erase(--iter);
                break;
            case 'P':
                cin >> word;
                M.insert(iter, word);
                break;
            default:
                break;
        }
    }
    for (auto iter = M.begin(); iter != M.end(); iter++) cout << *iter;
    return 0;
}
