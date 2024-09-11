#include <iostream>
using namespace std;

int main(){
    ios_base::sync_with_stdio(0);cin.tie(0);
        int T;
        int n;
        int dp[1001];

        cin >> T;

        dp[1] = 1;
        dp[2] = 2;
        dp[3] = 4;
        for(int j=4; j<11; j++) dp[j] = dp[j-1] + dp[j-2] + dp[j-3];

        for(int i=0; i<T; i++)
        {
            cin >> n;
            cout << dp[n] << "\n";
        }
    return 0;
}
