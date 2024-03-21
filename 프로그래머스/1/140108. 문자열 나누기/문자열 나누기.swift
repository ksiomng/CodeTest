import Foundation

func solution(_ s:String) -> Int {
    var result: Int = 0
    
    var first: String = ""
    var cnt: Int = 0
    
    for str in s {
        if first.isEmpty {
            first.append(str)
            cnt += 1
        } else {
            if first == String(str) {
                cnt += 1
            } else {
                cnt -= 1
            }
        }
        if cnt == 0 {
            result += 1
            first = ""
        }
    }
    if !first.isEmpty {
        result += 1
    }
    return result
}
