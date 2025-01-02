import Foundation

let n = Int(readLine()!)!
var classes = [[Int]]()

for _ in 0..<n {
    let line = readLine()!.split(separator: " ").map { Int($0)! }
    classes.append(line)
}

// 학생별 같은 반이었던 사람의 수 계산
var maxSharedClasses = [Int](repeating: 0, count: n)

for i in 0..<n {
    for j in 0..<n {
        if i != j {
            for year in 0..<5 {
                if classes[i][year] == classes[j][year] {
                    maxSharedClasses[i] += 1
                    break
                }
            }
        }
    }
}

// 가장 많은 사람과 같은 반이었던 학생 찾기
let maxCount = maxSharedClasses.max()!
let leader = maxSharedClasses.firstIndex(of: maxCount)! + 1

print(leader)