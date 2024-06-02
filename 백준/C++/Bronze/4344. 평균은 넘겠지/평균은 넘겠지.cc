#include <iostream>
#include <string>

using namespace std;

int main(){
    ios::sync_with_stdio(false); cin.tie(NULL); cout.tie(NULL);
    int test, student;
    int grade[1000];
    
    
    cin >> test;
    for (int i=0; i < test; i++) {
        int count = 0;
        int avg = 0;
        cin >> student;
        for (int j = 0; j < student; j++) {
            cin >> grade[j];
            avg += grade[j];
        }
        avg /= student;
        
        for (int j = 0; j < student; j++) {
            if (grade[j] > avg) {
                count++;
            }
        }
        cout << fixed;
        cout.precision(3);
        cout << ((float)count / student) * 100 << "%"
        << "\n";
    }
    
    return 0;
}
