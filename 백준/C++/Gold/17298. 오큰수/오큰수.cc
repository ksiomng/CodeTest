#include <iostream>
#include <stack>
using namespace std;

int main() {
    ios::sync_with_stdio(false); cin.tie(0);
    int N;
    cin >> N;
    stack<int> s;
    int arr[N];
    fill_n(arr,N,-1);
    
    for (int i = 0; i < N; i++){
        int num;
        cin >> num;
        
        if (s.empty()){
            s.push(num);
        } else if (s.top() > num){
            s.push(num);
        } else if (s.top() <= num){
            int cnt = i;
            while (!s.empty() && s.top() < num){
                if (arr[--cnt] == -1){
                    arr[cnt] = num;
                    s.pop();
                }
            }
            s.push(num);
        }
    }
    for (int i = 0; i < N; i++){
        cout << arr[i] << ' ';
    }
    return 0;
}
