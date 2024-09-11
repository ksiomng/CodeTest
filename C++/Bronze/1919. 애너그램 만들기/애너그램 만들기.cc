#include <iostream>
#include <string>
using namespace std;

int main() {
    ios::sync_with_stdio(false);
    int arr1[27] = {0,};
    int arr2[27] = {0,};
    int cnt = 0;
        
    string word1, word2;
    cin >> word1 >> word2;

    for (int i = 0; i < word1.size(); i++)
        arr1[(int)word1[i]-97] += 1;
    for (int i = 0; i < word2.size(); i++)
        arr2[(int)word2[i]-97] += 1;
        
    for (int i = 0; i < 27; i++){
        if (arr1[i] != arr2[i]){
            if(arr1[i] > arr2[i])
                cnt += (arr1[i] - arr2[i]);
            else
                cnt += (arr2[i] - arr1[i]);
        }
    }
    cout << cnt;
    return 0;
}

