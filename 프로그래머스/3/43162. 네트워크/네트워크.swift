import Foundation

func solution(_ n: Int, _ computers: [[Int]]) -> Int {
    var count = 0
    var visited = [Bool](repeating: false, count: n)

    func dfs(_ v: Int) {
        visited[v] = true
        for i in 0..<n {
            if !visited[i] && computers[v][i] == 1 {
                dfs(i)
            }
        }
    }

    for i in 0..<n {
        if !visited[i] {
            dfs(i)
            count += 1 
        }
    }
    
    return count
}