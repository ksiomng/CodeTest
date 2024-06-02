#include <iostream>
#include <string>

using namespace std;

int main(){
    int x, y;
    cin >> x >> y;

    if (x > 0){
        if(y > 0){
            cout << 1 << "\n";
        }
        else if (y < 0){
            cout << 4 << "\n";
        }
    }
    if (x < 0){
        if(y > 0){
            cout << 2 << "\n";
        }
        else if (y < 0){
            cout << 3 << "\n";
        }
    }

    return 0;
}
