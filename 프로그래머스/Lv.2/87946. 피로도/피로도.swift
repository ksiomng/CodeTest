import Foundation

func solution(_ k:Int, _ dungeons:[[Int]]) -> Int {
    var result = 0
    var visited = Array(repeating: false, count: dungeons.count)
    
    func dfs(_ cnt:Int, _ tired:Int) {
        if result < cnt {
            result = cnt
        }
        for i in 0..<dungeons.count {
            if !visited[i] && tired >= dungeons[i][0]{
                visited[i] = true
                dfs((cnt + 1), (tired - dungeons[i][1]))
                visited[i] = false
            }
        }
    }
    dfs(0, k)
    return result
}