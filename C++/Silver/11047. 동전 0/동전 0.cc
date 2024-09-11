#include<iostream>
#include <algorithm>
using namespace std;

int main(){
    int n, k;
    int coin = 0;
    int result = 0;
    cin >> n >> k;
    vector<int> v;
    
    for (int i = 0; i < n; i ++){
        cin >> coin;
        if (coin <= k) {
            v.push_back(coin);
        }
    }
    sort(v.begin(), v.end(), greater<int>());
    
    for (int i = 0; i <v.size(); i++) {
        while (k - v[i] >= 0) {
            result++;
            k -=  v[i];
        }
    }
    cout << result;
    return 0;
}