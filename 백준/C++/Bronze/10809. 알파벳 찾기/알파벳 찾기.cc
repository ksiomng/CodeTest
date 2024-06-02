#include <iostream>
#include <string>
#include <vector>

using namespace std;

// 소문자 a는 97

int main(){
    ios::sync_with_stdio(false); cin.tie(NULL); cout.tie(NULL);
    string s;
    string abc = "abcdefghijklmnopqrstuvwxyz";
    cin >> s;
    
    for (int i = 0; i < abc.size(); i++) {
        cout << (int)s.find(abc[i]) << " ";
    }
    return 0;
}
