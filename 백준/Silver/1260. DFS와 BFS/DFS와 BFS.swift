import Foundation

let line = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = line[0] // 정점의 수
let m = line[1]
let v = line[2]

var visited = Array(repeating: false, count: n + 1)
var graph: [[Int]] = Array(repeating: Array(repeating: 0, count: n + 1), count: n + 1)

// 그래프 간선 추가 (인접 행렬로 표현)
for _ in 0..<m {
    let relation = readLine()!.split(separator: " ").map { Int(String($0))! }
    let a = relation[0]
    let b = relation[1]
    graph[a][b] = 1
    graph[b][a] = 1
}

func dfs(_ v: Int) {
    visited[v] = true // 현재 정점을 방문했음을 표시
    print(v, terminator: " ") // 현재 정점을 출력

    // 모든 정점에 대해 반복
    for i in 1...n {
        // 방문하지 않았고, 현재 정점과 인접한 정점인 경우
        if visited[i] == false && graph[v][i] == 1 {
            dfs(i) // 해당 정점으로 재귀적으로 DFS 호출
        }
    }
}

func bfs(_ start: Int) {
    var queue = [Int]() // 큐를 초기화
    visited = Array(repeating: false, count: n + 1) // 방문 여부를 나타내는 배열 초기화

    queue.append(start) // 시작 정점을 큐에 추가
    visited[start] = true // 시작 정점을 방문했음을 표시

    // 큐가 비어있지 않은 동안 반복
    while !queue.isEmpty {
        let currentVertex = queue.removeFirst() // 큐에서 정점을 꺼냄
        print(currentVertex, terminator: " ") // 현재 정점을 출력

        // 모든 정점에 대해 반복
        for i in 1...n {
            // 방문하지 않았고, 현재 정점과 인접한 정점인 경우
            if visited[i] == false && graph[currentVertex][i] == 1 {
                queue.append(i) // 해당 정점을 큐에 추가
                visited[i] = true // 해당 정점을 방문했음을 표시
            }
        }
    }
}

dfs(v)
print("")
bfs(v)
