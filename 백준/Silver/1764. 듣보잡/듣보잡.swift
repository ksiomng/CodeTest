import Foundation

let input = readLine()!.split(separator: " ")
let N = Int(input[0])!
let M = Int(input[1])!
var S: Set<String> = []

for _ in 0..<N {
    let input = readLine()!
    S.insert(input)
}

var result = [String]()

for _ in 0..<M {
    let input = readLine()!
    if S.contains(input) {
        result.append(input)
    }
}

print(result.count)
result.sorted().forEach { print($0) }