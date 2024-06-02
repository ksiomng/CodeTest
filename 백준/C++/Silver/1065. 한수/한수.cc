#include <iostream>
#include <string>
#include <vector>

using namespace std;

int hansoo(int input){
    int count = 99;
    if (input < 100) {
        return input;
    }
    else if(input >= 100) {
        for (int i = 100; i <= input; i++) {
            int a = i % 10;
            int b = i / 10 % 10;
            int c = i / 100;
            
            if ((a - b) == (b - c)){
                count++;
            }
        }
        return count;
    }
    return 0;
}


int main(){
    ios::sync_with_stdio(false); cin.tie(NULL); cout.tie(NULL);
    int input;
    cin >> input;
    cout << hansoo(input) << "\n";
    
    return 0;
}
