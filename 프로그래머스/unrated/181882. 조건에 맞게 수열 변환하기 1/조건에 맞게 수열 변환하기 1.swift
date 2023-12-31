import Foundation

func solution(_ arr:[Int]) -> [Int] {
    var result = arr
    for i in 0..<arr.count {
        if result[i] >= 50 && result[i] % 2 == 0 {
            result[i] = result[i]/2
        }
        else if result[i] < 50 && result[i] % 2 == 1 {
            result[i] = result[i]*2
        }
    }
    return result
}