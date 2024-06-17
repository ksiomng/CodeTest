import Foundation

let input = readLine()!.split(separator: " ")
let N = Int(input[0])!
let M = Int(input[1])!

var nameToNumber = [String: Int]()
var numberToName = [Int: String]()

for i in 1...N {
    let name = readLine()!
    nameToNumber[name] = i
    numberToName[i] = name
}

var result = [String]()

for _ in 0..<M {
    let query = readLine()!
    if let number = Int(query) {
        result.append(numberToName[number]!)
    } else {
        result.append(String(nameToNumber[query]!))
    }
}

print(result.joined(separator: "\n"))
