#include <iostream>
#include <cmath>
using namespace std;

int main(){
    ios_base::sync_with_stdio(0);cin.tie(0);
    long long n, m;
    cin >> n >> m;
    
    for (long long i = n; i <= m; i++){
        bool a = true;
        if (i==1) {
            a = false;
        }
        else if (i >= 4){
            for (long long j = 2; j <= sqrt(i); j++){
                if (i%j == 0){
                    a = false;
                    break;
                }
            }
        }
        if (a) cout << i << "\n";
    }
    return 0;
}
