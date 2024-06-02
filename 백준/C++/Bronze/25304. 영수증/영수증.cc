#include <iostream>
#include <string>

using namespace std;

int main(){
    int total, test, a, b, sum = 0;
    cin >> total >> test;
    for (int i = 0; i < test; i++){
        cin >> a >> b;
        sum = sum + (a*b);
    }
    if(sum == total){
        cout << "Yes" << "\n";
    }
    else
        cout << "No" << "\n";
    return 0;
}