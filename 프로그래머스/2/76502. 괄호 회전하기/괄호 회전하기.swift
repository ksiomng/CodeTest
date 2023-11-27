import Foundation

func solution(_ s:String) -> Int {
    var str:String = s
    var a = ""
    var  cnt:Int = 0
    for _ in 0..<str.count {
        str.append((str.first)!)
        str.removeFirst()
        for s in str {
            if s == "]" {
                if a.last == "[" {
                    a.removeLast()
                }else {
                    a = "*"
                    break
                }
            }else if s == "}" {
                if a.last == "{" {
                    a.removeLast()
                }else {
                    a = "*"
                    break
                }
            }else if s == ")" {
                if a.last == "(" {
                    a.removeLast()
                }else {
                    a = "*"
                    break
                }
            }else {
                a.append(s)
            }
        }
        if a.isEmpty {
            cnt += 1
        }else {
            a = ""
        }
    }
    return cnt
}
