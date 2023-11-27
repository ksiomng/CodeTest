import Foundation

func solution(_ s:String) -> Int {
    var str:String = s
    var result:Int = 0
    
    for _ in 0..<str.count {
        var stack = ""
        str.append((str.first)!)
        str.removeFirst()
        for s in str {
            if s == "]" {
                if stack.last == "[" {
                    stack.removeLast()
                }else {
                    stack = "*"
                    break
                }
            }else if s == "}" {
                if stack.last == "{" {
                    stack.removeLast()
                }else {
                    stack = "*"
                    break
                }
            }else if s == ")" {
                if stack.last == "(" {
                    stack.removeLast()
                }else {
                    stack = "*"
                    break
                }
            }else {
                stack.append(s)
            }
        }
        if stack.isEmpty {
            result += 1
        }
    }
    return result
}
