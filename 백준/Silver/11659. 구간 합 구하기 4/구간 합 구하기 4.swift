import Foundation

let NM = readLine()!.split(separator: " ").map{Int($0)!}
let N = NM[0]
let M = NM[1]

var arr = [0] + readLine()!.split(separator: " ").map{Int($0)!}
for i in 1...N {
    arr[i] += arr[i-1]
}

for _ in 0..<M {
    let range = readLine()!.split(separator: " ").map{Int($0)!}
    print(arr[range[1]] - arr[range[0]-1])
}