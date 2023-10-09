import Foundation

func solution(_ numbers: [Int]) -> Int {
    return (0...9).filter { !numbers.contains($0) }.reduce(0, +)
}
//func solution(_ numbers:[Int]) -> Int {
//    var arr = [0,1,2,3,4,5,6,7,8,9]
//    for i in 0..<numbers.count {
//        arr[numbers[i]] = 0
//    }
//    return arr.reduce(0, +)
//}