#include <iostream>
#include <queue>
#include <string>
using namespace std;
#define X first
#define Y second
#define MAX 502

int arr[MAX][MAX];
bool vis[MAX][MAX];
int dist[MAX][MAX];

int N, M;
int dx[4] = { 1, 0, -1, 0};
int dy[4] = { 0, 1, 0, -1};

int main() {
    ios::sync_with_stdio(false); cin.tie(0);
    cin >> N >> M;
    
    for (int i=0; i<N; ++i){
        string row;
        cin >> row;
        for (int j=0; j<M; ++j){
            arr[i][j] = row[j]-'0';
        }
    }
    
    queue<pair<int,int>> Q;
    vis[0][0] = 1;
    Q.push({0,0});
    dist[0][0]++;
    
    while(!Q.empty()){
        pair<int,int> cur = Q.front();
        Q.pop();
        for(int i = 0; i < 4; i++){
            int nx = cur.X + dx[i];
            int ny = cur.Y + dy[i];
            if (nx < 0 || ny < 0 || nx >= N || ny >= M) continue;
            if(vis[nx][ny] || arr[nx][ny] != 1) continue;
            vis[nx][ny] = 1;
            Q.push({nx,ny});
            dist[nx][ny] = dist[cur.X][cur.Y] + 1;
        }
    }
    
    cout << dist[N-1][M-1];
    return 0;
}
