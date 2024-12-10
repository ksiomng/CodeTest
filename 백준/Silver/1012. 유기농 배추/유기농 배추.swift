import Foundation

let dx = [0, 0, -1, 1]
let dy = [-1, 1, 0, 0]

// BFS
func bfs(_ startX: Int, _ startY: Int, _ graph: inout [[Int]], _ visited: inout [[Bool]], _ n: Int, _ m: Int) {
    var queue = [(startX, startY)]
    visited[startX][startY] = true
    
    while !queue.isEmpty {
        let (x, y) = queue.removeFirst()
        
        for i in 0..<4 {
            let nx = x + dx[i]
            let ny = y + dy[i]
            
            if nx >= 0 && nx < n && ny >= 0 && ny < m && !visited[nx][ny] && graph[nx][ny] == 1 {
                visited[nx][ny] = true
                queue.append((nx, ny))
            }
        }
    }
}

let t = Int(readLine()!)!

var results = [Int]()

for _ in 0..<t {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let m = input[0] // 가로
    let n = input[1] // 세로
    let k = input[2] // 배추 위치
    
    var graph = Array(repeating: Array(repeating: 0, count: m), count: n)
    var visited = Array(repeating: Array(repeating: false, count: m), count: n)
    
    for _ in 0..<k {
        let position = readLine()!.split(separator: " ").map { Int($0)! }
        let x = position[1] // 세로
        let y = position[0] // 가로
        graph[x][y] = 1
    }
    
    var wormCount = 0
    for i in 0..<n {
        for j in 0..<m {
            if graph[i][j] == 1 && !visited[i][j] {
                bfs(i, j, &graph, &visited, n, m)
                wormCount += 1
            }
        }
    }
    
    results.append(wormCount)
}

results.forEach { print($0) }
