import Foundation

let firstLine = readLine()!.split(separator: " ").map { Int($0)! }
let n = firstLine[0]
let x = firstLine[1]
let visitors = readLine()!.split(separator: " ").map { Int($0)! }

var currentSum = 0
for i in 0..<x {
    currentSum += visitors[i]
}

var maxSum = currentSum
var maxCount = 1

for i in x..<n {
    currentSum += visitors[i] - visitors[i - x]
    if currentSum > maxSum {
        maxSum = currentSum
        maxCount = 1
    } else if currentSum == maxSum {
        maxCount += 1
    }
}

if maxSum == 0 {
    print("SAD")
} else {
    print(maxSum)
    print(maxCount)
}
