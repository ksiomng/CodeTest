import Foundation

var map = Array(repeating: Array(repeating: 0, count: 30), count: 30)
for i in 0..<30 {
    map[1][i] = i
}

for i in 2..<30 {
    for j in i..<30 {
        for k in stride(from: j-1, through: i-1, by: -1) {
            map[i][j] += map[i-1][k]
        }
    }
}

let t = Int(readLine()!)!
for _ in 0..<t {
    let input = readLine()!.split(separator: " ").map{ Int($0)!}
    let (n, m) = (input[0], input[1])
    print(map[n][m])
}