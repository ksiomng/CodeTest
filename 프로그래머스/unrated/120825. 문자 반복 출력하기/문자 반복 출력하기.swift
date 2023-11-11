import Foundation

func solution(_ my_string:String, _ n:Int) -> String {
    var arr = Array(my_string)
    var result = [Character]()
    for i in 0..<arr.count {
        for _ in 0..<n {
            result.append(arr[i])
        }
    }
    return String(result)
}