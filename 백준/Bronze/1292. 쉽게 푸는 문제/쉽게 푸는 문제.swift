import Foundation

func generateSequence(upTo limit: Int) -> [Int] {
    var sequence = [Int]()
    var number = 1
    while sequence.count < limit {
        sequence.append(contentsOf: Array(repeating: number, count: number))
        number += 1
    }
    return sequence
}

func sumOfSequence(from a: Int, to b: Int) -> Int {
    let sequence = generateSequence(upTo: b)
    return sequence[(a-1)..<b].reduce(0, +)
}

let input = readLine()!.split(separator: " ").map { Int($0)! }
let a = input[0]
let b = input[1]

let result = sumOfSequence(from: a, to: b)
print(result)