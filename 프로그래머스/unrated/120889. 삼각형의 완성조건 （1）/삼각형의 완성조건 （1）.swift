import Foundation

func solution(_ sides:[Int]) -> Int {
    var arr = sides.sorted()
    return arr[0] + arr[1] <= arr[2] ? 2 : 1
}