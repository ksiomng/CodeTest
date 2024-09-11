#include <iostream>
#include <string>
using namespace std;

int main() {
    string input;
    cin >> input;
    
    int NUM = 0;
    for(int i = 0; i < input.size(); i++){
        if (input[i] == 'A' || input[i] == 'B' || input[i] == 'C'){
            NUM += 3;
        }
        else if (input[i] == 'D' || input[i] == 'E' || input[i] == 'F'){
            NUM += 4;
        }
        else if (input[i] == 'G' || input[i] == 'H' || input[i] == 'I'){
            NUM += 5;
        }
        else if (input[i] == 'J' || input[i] == 'K' || input[i] == 'L'){
            NUM += 6;
        }
        else if (input[i] == 'M' || input[i] == 'N' || input[i] == 'O'){
            NUM += 7;
        }
        else if (input[i] == 'P' || input[i] == 'Q' || input[i] == 'R' || input[i] == 'S'){
            NUM += 8;
        }
        else if (input[i] == 'T' || input[i] == 'U' || input[i] == 'V'){
            NUM += 9;
        }
        else if (input[i] == 'W' || input[i] == 'X' || input[i] == 'Y' || input[i] == 'Z'){
            NUM += 10;
        }
    }
    cout << NUM << "\n";
    
    return 0;
}
