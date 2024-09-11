#include <iostream>
#include <string>
using namespace std;

int main() {
    int a;
    string arr;


    while (cin >> a){
        bool yes = true;
        arr = to_string(a);
        
        if (a == 0)
            return 0;
        
        
        for (int i = 0; i < (arr.size()/2)+1; i++){
            if (arr[i] != arr[arr.size()-i-1]){
                yes = false;
                break;
            }
            else
                continue;
        }
        
        if (yes == true)
            cout << "yes" << "\n";
        else
            cout << "no" << "\n";
    }
    return 0;
}
