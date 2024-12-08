import Foundation

let t = Int(readLine()!)!

let lastDigitPatterns: [Int: [Int]] = [
    0: [10],
    1: [1],
    2: [2, 4, 8, 6],
    3: [3, 9, 7, 1],
    4: [4, 6],
    5: [5],
    6: [6],
    7: [7, 9, 3, 1],
    8: [8, 4, 2, 6],
    9: [9, 1]
]

for _ in 0..<t {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let a = input[0]
    let b = input[1]
    
    let lastDigit = a % 10
    
    let pattern = lastDigitPatterns[lastDigit]!
    let patternLength = pattern.count
    
    let index = (b - 1) % patternLength
    print(pattern[index])
}
