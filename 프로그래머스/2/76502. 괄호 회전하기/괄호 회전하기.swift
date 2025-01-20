import Foundation

func solution(_ s:String) -> Int {
    var cnt: Int = 0
    var str: String = s
    for _ in str {
        str.append(str.removeFirst())
        if checkParentheses(str) {
            cnt += 1
        }
    }
    return cnt
}

func checkParentheses(_ s: String) -> Bool {
    var stack = [String]()
    for s in s {
        if s == "[" {
            stack.append("[")
        } else if s == "]" {
            if stack.last == "[" {
                stack.removeLast()
            } else {
                return false
            }
        } else if s == "{" {
            stack.append("{")
        } else if s == "}" {
            if stack.last == "{" {
                stack.removeLast()
            } else {
                return false
            }
        }  else if s == "(" {
            stack.append("(")
        } else if s == ")" {
            if stack.last == "(" {
                stack.removeLast()
            } else {
                return false
            }
        }
    }
    return stack.isEmpty ? true : false
}