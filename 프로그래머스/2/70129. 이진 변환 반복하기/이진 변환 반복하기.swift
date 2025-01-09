import Foundation

func solution(_ s: String) -> [Int] {
    var s = s
    var transformationCount = 0
    var removedZerosCount = 0

    while s != "1" {
        let zeroCount = s.filter { $0 == "0" }.count
        removedZerosCount += zeroCount
        s = String(s.filter { $0 == "1" }.count, radix: 2)
        transformationCount += 1
    }

    return [transformationCount, removedZerosCount]
}