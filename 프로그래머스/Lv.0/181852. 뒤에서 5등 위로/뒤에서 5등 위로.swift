import Foundation

func solution(_ num_list:[Int]) -> [Int] {
    var list = num_list.sorted()
    return list.suffix(num_list.count - 5)
}
