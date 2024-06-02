#include <iostream>
using namespace std;

int main()
{
    int a, i;
    int sum = 0;
    cin >> a;
    for (i = 1; i < a + 1; i++) {
        sum = sum + i;
    }
    cout << sum << endl;
}
