#include <iostream>
using namespace std;

int main(){
    ios_base::sync_with_stdio(0);cin.tie(0);
    int n, cnt = 1;
    cin >> n;
    pair<int, int> p[50];
    for( int i = 0; i < n; i++ )
            cin >> p[i].first >> p[i].second;
    for(int i = 0; i < n; i++){
        for( int j = 0; j < n; j++ ){
            if( p[i].first < p[j].first && p[i].second < p[j].second ) {
                cnt++;
            }
        }
        cout << cnt << " ";
        cnt = 1;
    }
    return 0;
}
