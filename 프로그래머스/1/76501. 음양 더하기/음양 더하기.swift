import Foundation
func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
    var cnt = 0
    for i in 0..<signs.count {
        cnt += signs[i]  ? absolutes[i]:-absolutes[i]
    }
    return cnt
}

// func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
//     return (0..<absolutes.count).map { signs[$0] ? absolutes[$0] : -absolutes[$0] }.reduce(0, +)
// }