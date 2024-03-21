import Foundation

func solution(_ s:String) -> Int {
    var first: String = ""
    var fcnt: Int = 0
    var scnt: Int = 0
    var result: Int = 0
    for str in s {
        if first.isEmpty {
            first.append(str)
            fcnt += 1
        } else {
            if first == String(str) {
                fcnt += 1
            } else {
                scnt += 1
            }
        }
        if fcnt == scnt {
            result += 1
            fcnt = 0
            scnt = 0
            first = ""
        }
    }
    if !first.isEmpty {
        result += 1
    }
    return result
}
