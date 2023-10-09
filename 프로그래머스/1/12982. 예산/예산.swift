import Foundation

func solution(_ d:[Int], _ budget:Int) -> Int {
    var dd = d.sorted()
    var sum = 0
    var cnt = 0
    for i in 0..<d.count {
        sum += dd[i]
        if sum <= budget {
            cnt += 1
        }
        else {
            break
        }
    }
    return cnt
}