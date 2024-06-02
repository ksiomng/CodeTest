#include <iostream>
#include <string>
#include <vector>
#include <algorithm>

using namespace std;

int main(){
    ios::sync_with_stdio(false); cin.tie(NULL); cout.tie(NULL);
    string s;
    int max = 0;
    int index = 0;
    int cnt = 0;
    int count[26] = {0};
    cin >> s;
    for(int i=0; i < s.size(); i++){
        s[i] = toupper(s[i]);
    }
    for (int i=0; i < 26; i++) {
        for (int j=0; j < s.size(); j++) {
            if (s[j]==(char)(i+65)) {
                count[i]++;
            }
        }
    }
    for (int i=0; i < 26; i++) {
        if (count[i] > max) {
            max = count[i];
            index = i;
        }
    }
    for (int i=0; i<26; i++){
        if(count[i] == max) cnt++;
        if(cnt >= 2) {
            cout << '?' << "\n";
            return 0;
        }
    }
    cout << (char)(index + 65) << "\n";
    return 0;
}
