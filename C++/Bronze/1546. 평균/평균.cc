#include <iostream>
#include <string>

using namespace std;

int main(){
    ios::sync_with_stdio(false); cin.tie(NULL); cout.tie(NULL);
    int n;
    float grade, x, P = 0;
    float max = 0;
    
    cin >> n;
    float arr[n];
    
    for (int i=0; i < n; i++){
        cin >> grade;
        arr[i] = {grade};
        
        if(arr[i] > max){
        max = arr[i];
        }
    }
    for (int i=0; i < n; i++){
    
    x = arr[i] / max * 100;
    P += x;
    }
    
    cout << P/n << "\n";
    
    
    
    return 0;
}
