import Foundation

var arr: [Int] = readLine()!.split(separator: " ").map{ Int($0)! }

var xCnt = 0
var yCnt = 0

for i in 0..<arr[0] {
    if i % (arr[2]+1) == 0 {
        xCnt += 1
    }
}

for i in 0..<arr[1] {
    if i % (arr[3]+1) == 0 {
        yCnt += 1
    }
}

print(xCnt*yCnt)
