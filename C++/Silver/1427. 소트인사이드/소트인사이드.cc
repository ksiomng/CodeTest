#include <iostream>
#include <algorithm>
using namespace std;

int main(){
    ios_base::sync_with_stdio(0);cin.tie(0);
    string n;
    cin >> n;
    sort(n.begin(), n.end(),greater<int>());
    cout << n;
    return 0;
}
