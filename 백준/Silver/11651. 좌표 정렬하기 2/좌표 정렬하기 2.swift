import Foundation

let n = Int(readLine()!)!
var arr: [(Int, Int)] = []

for _ in 0..<n {
    let input = readLine()!.split(separator: " ")
    let a = Int(input[0])!, b = Int(input[1])!
    arr.append((a,b))
}

arr = arr.sorted{
    if $0.1 != $1.1 {
        return $0.1 < $1.1
    } else {
        return $0.0 < $1.0
    }
}

for a in arr {
    print(a.0, a.1)
}
