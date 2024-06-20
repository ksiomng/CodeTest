import Foundation

let N = Int(readLine()!)!
var arrs = [Int](repeating: 0, count: 101)

arrs[0] = 1
arrs[1] = 1
arrs[2] = 1
arrs[3] = 2
arrs[4] = 2

for i in 5..<100 {
    arrs[i] = arrs[i-2] + arrs[i-3]
}

for _ in 0..<N {
    let M = Int(readLine()!)!
    print(arrs[M-1])
}
