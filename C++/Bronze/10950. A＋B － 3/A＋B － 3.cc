#include <iostream>
using namespace std;


int main()
{
    int a, b, t;
    int i = 1;
    cin >> t;
    for (i = 1; i < t + 1; i++) {
        cin >> a >> b;
        cout << a + b << endl;
    }
    return 0;
}
