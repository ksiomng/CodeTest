#include<iostream>
#include <algorithm>
using namespace std;

int main(){
    int n, p;
    cin >> n;
    vector<int> v;
    int result = 0;
    for (int i =0; i <n; i++) {
        cin >> p;
        v.push_back(p);
    }
    sort(v.begin(),v.end());
    for (int i =1; i <=n; i++) {
        result += v.back() * i;
        v.pop_back();
    }
    cout << result;
    return 0;
}
