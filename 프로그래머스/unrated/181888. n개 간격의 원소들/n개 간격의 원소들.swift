import Foundation

func solution(_ num_list:[Int], _ n:Int) -> [Int] {
    var result = [Int]()
    var idx = 1
    let cnt = num_list.count%n > 0 ? (num_list.count/n)+1 : (num_list.count/n)
    for i in 0..<cnt {
        result.append(num_list[idx-1])
        idx = idx + n
    }
    return result
}