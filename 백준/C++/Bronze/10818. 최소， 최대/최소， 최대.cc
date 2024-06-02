#include <iostream>
#include <string>

using namespace std;

int main(){
    ios::sync_with_stdio(false); cin.tie(NULL); cout.tie(NULL);
    int n;
    int max= -1000000;
    int min= 100000;
    
    cin >> n;
    int arr[n];
    
    for(int i=0; i < n; i++){
        
        cin >> arr[i];
        if (arr[i] > max) max = arr[i];
        // 더 큰값을 최대값으로 한다.
        if (arr[i] < min) min = arr[i];
        // 더 작은 값을 최소값으로 한다.
    }
    cout << min << ' ' << max << "\n";
       return 0;
}
