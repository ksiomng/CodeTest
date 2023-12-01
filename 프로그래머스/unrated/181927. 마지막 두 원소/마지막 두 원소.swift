import Foundation

func solution(_ num_list:[Int]) -> [Int] {
    var list = num_list
    let idx: Int = num_list.count-1
    if num_list.count >= 2 {
        if num_list[idx] > num_list[idx-1] {
            list.append(num_list[idx] - num_list[idx-1])
        } else {
            list.append(num_list[idx] * 2)
        }
    }
    return list
}
