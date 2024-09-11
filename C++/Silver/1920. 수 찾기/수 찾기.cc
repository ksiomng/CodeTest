#include<iostream>
#include <algorithm>
using namespace std;

int n, m, k;
int arr[100010];

bool binary_search(vector<int>& arr, int len, int target){
    int low = 0, high = len - 1;
    
    while(low <= high){
        int mid = (low + high) / 2;
    
        if(target == arr[mid]){
            return true;
        }
        if(target < arr[mid]){
            high = mid - 1;
        }
        else if(target > arr[mid]){
            low = mid + 1;
        }
    }
    return false; // 마지막까지 못찾는다면 false 반환
}

int main(){
    ios_base::sync_with_stdio(0);cin.tie(0);
    cin >> n;
    for (int i =0; i < n; i++) {
        cin >> arr[i];
    }
    sort(arr,arr+n);
    cin >> m;
    for (int i =0; i < m; i++) {
        cin >> k;
        cout << binary_search(arr, arr+n, k) << "\n";
    }
    return 0;
}
