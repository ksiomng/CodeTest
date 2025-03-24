import Foundation

func solution(_ t:String, _ p:String) -> Int {
    var arr = Array(t)
    var result: Int = 0
    var sum = 0
    for i in 0...(arr.count-p.count) {
        for j in 0..<p.count {
            sum *= 10
            sum += Int(String(arr[i+j]))!
        }
        if sum <= Int(p)! {
            result += 1
        }
        sum = 0
    }
    return result
}