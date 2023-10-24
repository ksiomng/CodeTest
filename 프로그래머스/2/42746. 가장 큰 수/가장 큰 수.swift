import Foundation

func solution(_ numbers:[Int]) -> String {
    var arr = [String]()
    for i in 0..<numbers.count {
        arr.append(String(numbers[i]))
    }
    arr = arr.sorted(by: {$0+$1 > $1+$0})
    if arr[0] == "0" {return "0"}
    return arr.reduce("", +)
}