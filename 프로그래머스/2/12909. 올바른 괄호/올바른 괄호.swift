import Foundation

func solution(_ s:String) -> Bool {
    var cnt: Int = 0
    
    for s in s {
        if s == "(" {
            cnt += 1
        } else {
            cnt -= 1
            if cnt < 0 {
                return false
            }
        }
    }

    return cnt == 0 ? true : false
}