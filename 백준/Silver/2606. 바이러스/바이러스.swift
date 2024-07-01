import Foundation

let n = Int(readLine()!)!
let m = Int(readLine()!)!

var graph = [[Int]](repeating: [], count: n + 1)

for _ in 0..<m {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let a = input[0], b = input[1]
    graph[a].append(b)
    graph[b].append(a)
}

var visited = [Bool](repeating: false, count: n + 1)

func dfs(_ v: Int) {
    visited[v] = true
    for i in graph[v] {
        if !visited[i] {
            dfs(i)
        }
    }
}

dfs(1)

let result = visited.filter { $0 }.count - 1
print(result)
