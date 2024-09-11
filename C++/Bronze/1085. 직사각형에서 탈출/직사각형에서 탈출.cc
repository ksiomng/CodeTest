#include <iostream>
using namespace std;

int main() {
    int x, y, w, h;
    cin >> x >> y >> w >> h;
    
    if ((w-x) >= (h-y)){
        if ((h-y) >= y){
            if (x > y){
                cout << y;
                return 0;
            }
            else{
                cout << x;
                return 0;
            }
        }
        else {
            if (x >= (h-y)){
                cout << (h-y);
                return 0;
            }
            else{
                cout << x;
                return 0;
            }
        }
    }
    
    else {
        if ((w-x) >= x){
            if (x > y){
                cout << y;
                return 0;
            }
            else{
                cout << x;
                return 0;
            }
        }
        else {
            if (x >= (w-x)){
                cout << (w-x);
                return 0;
            }
            else{
                cout << x;
                return 0;
            }
        }
    }
    return 0;
}
