import Foundation

func solution(_ d:[Int], _ budget:Int) -> Int {
    var arr = d.sorted()
    var bud = budget
    var result = 0
    
    for i in 0..<arr.count {
        if bud >= arr[i] {
            bud -= arr[i]
            result += 1
        } else {
            break
        }
    }
    return result
}