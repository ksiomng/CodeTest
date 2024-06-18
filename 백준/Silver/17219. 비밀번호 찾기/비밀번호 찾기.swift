import Foundation

let nm = readLine()!.split(separator: " ")
let N = Int(nm[0])!
let M = Int(nm[1])!
var dic = [String: String]()

for _ in 0..<N {
    let input = readLine()!.split(separator: " ")
    dic[String(input[0])] = String(input[1])
}

for _ in 0..<M {
    let input = readLine()!
    print(dic[input] ?? "")
}