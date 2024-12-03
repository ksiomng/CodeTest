import Foundation

let input = readLine()!.split(separator: " ").compactMap{ Int($0) }
let n = input[0]
let m = input[1]

var graph = [[Int]](repeating: [], count: n + 1)
var visited = [Bool](repeating: false, count: n + 1)

for _ in 0..<m {
    let edge = readLine()!.split(separator: " ").compactMap { Int($0) }
    let (u, v) = (edge[0], edge[1])
    graph[u].append(v)
    graph[v].append(u)
}

func dfs(_ node: Int) {
    visited[node] = true
    for neighbor in graph[node] {
        if !visited[neighbor] {
            dfs(neighbor)
        }
    }
}

var connectedComponents = 0

for i in 1...n {
    if !visited[i] {
        connectedComponents += 1
        dfs(i)
    }
}

print(connectedComponents)