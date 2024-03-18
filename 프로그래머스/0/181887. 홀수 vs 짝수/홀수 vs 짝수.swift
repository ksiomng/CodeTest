import Foundation

func solution(_ num_list:[Int]) -> Int {
    var a:Int = 0
    var b:Int = 0
    for i in 0..<num_list.count {
        if i % 2 == 0 {
            a += num_list[i]
        } else {
            b += num_list[i]
        }
    }
    return a > b ? a : b
}