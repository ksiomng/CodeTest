import Foundation

func solution(_ arr:[Int]) -> [Int] {
    var result = [Int]()
    for a in arr {
        for _ in 0..<a {
            result.append(a)
        }
    }
    return result
}