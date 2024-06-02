#include <iostream>
#include <string>

using namespace std;

int main(){
    int h, m, c;
    cin >> h >> m ;
    c = h * 60 + m - 45;
    
    if (c%60 >= 0){
        cout << c/60 << " " << c%60 << "\n" ;
    }
    else if (c%60 < 0){
        cout << 23-c/60 << " " << 60 + c%60 << "\n" ;
    }
    
    
    return 0;
}
