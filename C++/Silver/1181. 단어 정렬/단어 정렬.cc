#include<iostream>
#include<string>
#include<vector>
#include<algorithm>
using namespace std;

bool compare(string a, string b) //비교해주는 함수
{
    if (a.size() != b.size()) {
        return a.size() < b.size();
    }
    else {
        return a < b;
    }
}

int main(){ // 메인함수
    int a;
    cin >> a;
    vector<string> v;
    
    for (int i =0; i < a; i++) {
        string tmp;
        cin >> tmp;
        v.push_back(tmp);
    }
    sort(v.begin(), v.end(), compare);
    v.erase(unique(v.begin(), v.end()),v.end());
    
    for (int i =0; i < v.size(); i++) {
        cout << v[i] << "\n";
    }
    return 0;
}