import Foundation

func solution(_ names:[String]) -> [String] {
    var result = [String]()
    for i in 0..<(names.count%5 == 0 ? (names.count/5) : names.count/5+1) {
        result.append(names[i*5])
    }
    return result
}