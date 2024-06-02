#include <iostream>
#include <string>
#include <vector>
#include <algorithm>

using namespace std;

int rev(int n){
    int res = 0;
    while(n>0){
        res *= 10;
        res += (n%10);
        n /= 10;
    }
    return res;
}

int main(){
    ios::sync_with_stdio(false); cin.tie(NULL); cout.tie(NULL);
    int n, h;
    cin >> n >> h;
    if (rev(n) < rev(h)) {
        cout << rev(h);
    }
    else{
        cout << rev(n);
    }
    
    return 0;
}
