#include <iostream>
#include <string>
using namespace std;

int main()
{
    ios::sync_with_stdio(false); cin.tie(NULL); cout.tie(NULL);
    int t;
    cin >> t;
    for (int i = 0; i < t; i++) {
        int r;
        string str;
        cin >> r;
        cin >> str;

        for (int j = 0; j < str.length(); j++) {
            for (int k = 0; k < r; k++) {
                cout << str[j];
            }
        }
        cout << "\n";
    }
}
