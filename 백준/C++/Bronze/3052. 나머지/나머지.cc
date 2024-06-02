#include <iostream>
#include <string>

using namespace std;

int main(){
    ios::sync_with_stdio(false); cin.tie(NULL); cout.tie(NULL);
    int a, count=0;
    int arr[42] = {0};
    for (int i=0; i<10; i++){
        cin >> a;
        arr[a%42] += 1;
    }
    for (int i=0; i<42; i++){
        if(arr[i] == 1){
            count += 1;
        }
        else if(arr[i] >= 2){
            count += 1;
        }
    }
    cout << count;
    return 0;
}
