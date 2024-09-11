#include <iostream>
#include <string>
using namespace std;

int main() {
    ios::sync_with_stdio(false);
    int a;
    cin >> a;
    
    for (int i = 0; i < a; i++){
        int arr1[27] = {0,};
        int arr2[27] = {0,};
        bool t = true;
        
        string word1, word2;
        cin >> word1 >> word2;
        
        if(word1.size() != word2.size())
            t = false;
        else {
            for (int i = 0; i < word1.size(); i++)
                arr1[(int)word1[i]-97] += 1;
            for (int i = 0; i < word2.size(); i++)
                arr2[(int)word2[i]-97] += 1;
        }
        
        for (int i = 0; i < 26; i++){
            if (arr1[i] != arr2[i]){
                t = false;
            }
        }
        
        if (t == true){
            cout << "Possible" << "\n";
        }
        else {
            cout << "Impossible" << "\n";
        }
    }
    return 0;
}
