import Foundation

func solution(_ n:Int, _ t:Int) -> Int {
    var result: Int = n
    for _ in 0..<t {
        result += result
    }
    return result
}