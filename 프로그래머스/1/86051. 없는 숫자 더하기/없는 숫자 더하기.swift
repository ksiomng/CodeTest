import Foundation

func solution(_ numbers:[Int]) -> Int {
    var result = 45
    for num in numbers {
        result -= num
    }
    return result
}