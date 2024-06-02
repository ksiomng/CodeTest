#include <iostream>
#include <deque>
#include <algorithm>
using namespace std;

int main() {
    ios::sync_with_stdio(false);
    int N, M;
    cin >> N >> M;
    deque<int> A;
    int index;
    
    for (int i = 1 ; i <= N; i++){
        A.push_back(i);
    }
    int cnt = 0;
    
    while (M--){
        int a;
        cin >> a;
        
        for (int i = 0; i < A.size(); ++i) {
            if (A[i] == a) {
                index = i;
                break;
            }
        }
        
        if (index <= (A.size()/2)){
            while (A.front() != a){
                A.push_back(A.front());
                A.pop_front();
                cnt++;
            }
        }
        else {
            while (A.front() != a){
                A.push_front(A.back());
                A.pop_back();
                cnt++;
            }
        }
        
    if (A.front() == a){
        A.pop_front();
    }
}
cout << cnt;

return 0;
}
