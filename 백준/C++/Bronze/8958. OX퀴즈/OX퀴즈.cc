#include <iostream>
#include <string>

using namespace std;

int main(){
    ios::sync_with_stdio(false); cin.tie(NULL); cout.tie(NULL);
    int test, cnt = 0, total = 0;
    string ox;
    
    cin >> test;
    for (int i=0; i < test; i++){
        cin >> ox;
        
        for (int j=0; j < ox.size(); j++){
            if (ox[j] == 'O') {
                cnt++;
                total += cnt;
            }
            else if (ox[j] == 'X'){
                cnt = 0;
            }
        }
        cout << total << "\n";
        total = 0;
        cnt = 0;
    }
    
    return 0;
}
