import Foundation

var m: Int = 0 // 노드의 수를 나타내는 변수
var visited = [Bool]() // 방문한 노드를 표시하기 위한 배열
var graph =  [[Int]]() // 그래프를 나타내는 이차원 배열

// 주어진 그래프에서 연결된 구성 요소의 수를 반환하는 함수
func solution(_ n: Int, _ computers: [[Int]]) -> Int {
    m = n
    visited = [Bool](repeating: false, count: n) // 방문한 노드를 초기화
    graph = [[Int]](repeating: [Int](repeating: 0, count: n), count: n) // 그래프를 초기화
    
    // 주어진 컴퓨터 연결 정보를 그래프로 변환
    for i in 0..<m {
        for j in 0..<m {
            if computers[i][j] == 1 {
                graph[i][j] = 1
            }
        }
    }
    
    var count = 0 // 연결된 구성 요소의 수를 나타내는 변수
    for i in 0..<m {
        if !visited[i] { // 아직 방문하지 않은 노드인 경우
            dfs(i) // DFS를 시작하여 해당 노드의 연결된 모든 노드를 방문
            count += 1 // 연결된 구성 요소의 수 증가
        }
    }
    
    return count // 최종적으로 연결된 구성 요소의 수 반환
}

// 깊이 우선 탐색(DFS) 함수
func dfs(_ v: Int) {
    visited[v] = true // 현재 노드를 방문했음을 표시
    
    // 현재 노드와 연결된 모든 노드에 대해 반복
    for i in 0..<m {
        // 아직 방문하지 않았고, 현재 노드와 연결된 노드인 경우
        if !visited[i] && graph[v][i] == 1 {
            dfs(i) // 해당 노드로 재귀적으로 DFS 호출
        }
    }
}
