#include <iostream>
#include <string>

using namespace std;

int main(){
    ios::sync_with_stdio(false); cin.tie(NULL); cout.tie(NULL);
    int max= 0;
    int a;
    int arr[9];
    
    for(int i=0; i < 9; i++){
        
        cin >> arr[i];
        if (arr[i] > max)
        {   max = arr[i];
            a = i;
        }
    }
    cout << max << "\n" << a+1 << "\n";
       return 0;
}
