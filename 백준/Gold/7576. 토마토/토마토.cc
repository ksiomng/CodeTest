#include <iostream>
#include <queue>
#include <string>
using namespace std;
#define X first
#define Y second
#define MAX 1001

int arr[MAX][MAX];
int far[MAX][MAX];

int N, M;
int dx[4] = { 1, 0, -1, 0};
int dy[4] = { 0, 1, 0, -1};
int cnt = 0;

queue<pair<int,int>> Q;

int main() {
    ios::sync_with_stdio(false);
    cin >> M >> N;
    
    for (int i=0; i<N; i++){
        for (int j=0; j<M; j++){
            cin >> arr[i][j];
            far[i][j] = -1;
            if (arr[i][j] == 1){
                Q.push(make_pair(i, j));
                far[i][j] = 0;
            }
        }
    }
    
    while(!Q.empty()){
        int x = Q.front().X;
        int y = Q.front().Y;
        Q.pop();
        
        for(int i = 0; i < 4; i++){
            int nx = x + dx[i];
            int ny = y + dy[i];
            if (nx < 0 || ny < 0 || nx >= N || ny >= M) continue;
            if(far[nx][ny] == -1 && arr[nx][ny] == 0){
                far[nx][ny] = far[x][y] + 1;
                Q.push(make_pair(nx,ny));
            }
        }
    }
    
    int ans = 0;
    
    for (int i=0; i<N; i++){
        for (int j=0; j<M; j++){
            if (far[i][j] > ans) {
                ans = far[i][j];
            }
        }
    }
    
    for (int i=0; i<N; i++){
        for (int j=0; j<M; j++){
            if (far[i][j] == -1 && arr[i][j] == 0){
                ans = -1;
                break;
            }
        }
    }
    
    cout << ans;
    return 0;
}
