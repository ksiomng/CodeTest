#include <iostream>
#include <queue>
#include<utility>
using namespace std;

int main() {
    ios::sync_with_stdio(false); cin.tie(0);
    int a, b;
    cin >> a >> b;
    int a_cnt = 0, max = 0;;
    int arr[501][501];
    bool visit[501][501];
    
    for (int i = 0; i < a; i++){
        for (int j = 0; j < b; j++){
            cin >> arr[i][j];
        }
    }
    int dx[4] = {1,0,-1,0};
    int dy[4] = {0,1,0,-1};
    queue<pair<int, int>> Q;
    
    for (int i = 0; i < a; i++){
        for (int j = 0; j < b; j++){
            if (arr[i][j] == 0 || visit[i][j]) continue;
            a_cnt++;
            visit[i][j] = 1;
            Q.push({i,j});
            
            int b_cnt = 0;
            while (!Q.empty()){
                b_cnt++;
                pair<int, int> di = Q.front();
                Q.pop();
                for(int dir = 0; dir < 4; dir++){
                    int nx = di.first + dx[dir];
                    int ny = di.second + dy[dir];
                    if(nx < 0 || nx >= a || ny < 0 || ny >= b) continue;
                    if(visit[nx][ny] || arr[nx][ny] == 0) continue;
                    visit[nx][ny] = 1;
                    Q.push({nx,ny});
                }
            }
            if (max < b_cnt) max = b_cnt;
        }
    }

    cout << a_cnt << "\n" << max;
    
    
    return 0;
}
