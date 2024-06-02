#include <iostream>
#include <string>

using namespace std;

int main(){
    ios::sync_with_stdio(false); cin.tie(NULL); cout.tie(NULL);
    int a, b, c, f;
    cin >> a >> b >> c;
    f = a * b * c;
    int arr[10] = {};
    
    while(f!=0){
        arr[f%10] += 1;
        f /= 10;
    }
    for (int i=0; i<10; i++){
        cout << arr[i] << "\n";
    }
    
          return 0;
}
