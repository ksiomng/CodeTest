import Foundation

func solution(_ array:[Int]) -> [Int] {
    let max = array.max()!
    return [max, array.firstIndex(of: max)!]
}
