#include <iostream>
#include <string>
#include <vector>
#include <algorithm>

using namespace std;

int main(){
    ios::sync_with_stdio(false); cin.tie(NULL); cout.tie(NULL);
    string word;
    getline(cin, word);
//    cin >> word;
    int count = 1;
    for (int i = 0; i < word.size(); i++) {
        if ((int)word[i] == 32) {
            count++;
        }
    }
    if ((int)(word.front()) == 32) {
        count = count-1;
    }
    if ((int)(word.back()) == 32) {
        count = count-1;
    }
    
    cout << count;
    return 0;
}
