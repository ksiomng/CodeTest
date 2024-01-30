import Foundation

func solution(_ strArr:[String]) -> [String] {
    var arr = strArr
    for i in 0..<arr.count {
        if i%2 == 0 {
            arr[i] = arr[i].lowercased()
        } else {
            arr[i] = arr[i].uppercased()
        }
    }
    return arr
}