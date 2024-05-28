let input = readLine()!.split(separator: " ").map { Int($0)! }
let k = input[0]
let n = input[1]
var lan = [Int]()
for _ in 0..<k {
    lan.append(Int(readLine()!)!)
}

var s = 0
var e = lan.max()! + 1

while s < e {
    let mid = (s + e)/2
    
    let count = lan.map { $0/mid }.reduce(0, +)
    if count >= n {
        s = mid + 1
    } else {
        e = mid
    }
}
print(s - 1)