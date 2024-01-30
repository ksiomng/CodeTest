import Foundation

func solution(_ num_list:[Int], _ n:Int) -> [Int] {
    var list = num_list
    for i in 0..<n {
        list.append(list.removeFirst())
    }
    return list
}
