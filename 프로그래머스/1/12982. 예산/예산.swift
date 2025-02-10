import Foundation

func solution(_ d:[Int], _ budget:Int) -> Int {
    var arr = d.sorted()
    var cnt = 0
    var m = budget
    
    while m > 0 {
        if m < arr[0] {
            break
        } else {
        m -= arr.removeFirst()
        if m < 0 {break}
        cnt += 1
        }
        if cnt == d.count {break}
    }
    return cnt
}