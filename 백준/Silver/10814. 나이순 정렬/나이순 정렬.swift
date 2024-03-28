import Foundation

let n = Int(readLine()!)!
var arr: [(age: Int, id: String)] = []

for _ in 0..<n {
    let input = readLine()!.split(separator: " ")
    let age = Int(input[0])!, id = String(input[1])
    arr.append((age, id))
}

arr.sort { $0.age < $1.age }
arr.forEach { print($0.age, $0.id) }
