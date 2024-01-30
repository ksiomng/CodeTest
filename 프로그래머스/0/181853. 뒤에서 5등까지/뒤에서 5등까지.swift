import Foundation

func solution(_ num_list:[Int]) -> [Int] {
    var num_lists = num_list.sorted()
    var result:[Int] = []
    for i in 0..<5 {
        result.append(num_lists[i])
    }
    return result
}
