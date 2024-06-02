#include <iostream>
using namespace std;

int main(){
    int dp[51][51];
    ios_base::sync_with_stdio(0);cin.tie(0);
    int n;
    cin >> n;
    dp[0][0] = 1;
    dp[0][1] = 0;
    dp[1][0] = 0;
    dp[1][1] = 1;
    for (int i = 2; i < 51; i++){
        dp[i][0] = dp[i-1][0] + dp[i-2][0];
        dp[i][1] = dp[i-1][1] + dp[i-2][1];
    }
    
    for (int i = 0; i < n; i++){
        int a;
        cin >> a;
        cout << dp[a][0] << " " <<dp[a][1] << "\n";
    }
    return 0;
}
