import Foundation

func findShortestTime(_ start: Int, _ target: Int) -> Int {
    if start == target { return 0 }

    let maxPosition = 100000
    var visited = Array(repeating: false, count: maxPosition + 1)
    var queue = [(position: Int, time: Int)]()
    var front = 0

    queue.append((start, 0))
    visited[start] = true

    while front < queue.count {
        let (current, time) = queue[front]
        front += 1

        let nextPositions = [current - 1, current + 1, current * 2]

        for next in nextPositions {
            if next == target {
                return time + 1
            }

            if next >= 0 && next <= maxPosition && !visited[next] {
                visited[next] = true
                queue.append((next, time + 1))
            }
        }
    }

    return -1
}

let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0]
let k = input[1]

print(findShortestTime(n, k))
