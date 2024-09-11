#include <iostream>
#include <cmath> //제곱사용가능함수
using namespace std;

int main() {
    
    long long L;
    cin >> L;
    char arr[L];
    unsigned long long sum = 0;
    long long M = 1234567891;
    long long a = 1;
    for(int i = 0; i < L; i++){
        cin >> arr[i];
    }
    for(int i = 0; i < L; i++){
        sum += (arr[i]-96)%M * a;
        sum %= M;
        a = (a*31) % M;
    }
    cout << sum;
    return 0;
}
