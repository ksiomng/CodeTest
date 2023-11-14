import Foundation

func solution(_ s:String) -> Int{
    var arr = [Character]()
    for c in s {
        if !arr.isEmpty && arr.last == c {
            arr.removeLast()
        }
        else {
            arr.append(c)
        }
    }
    return arr.isEmpty ? 1 : 0
}