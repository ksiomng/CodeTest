import Foundation

func solution(_ cipher:String, _ code:Int) -> String {
    var arr = Array(cipher)
    var result = ""
    for i in 1...arr.count/code {
        result.append(arr[code*i-1])
    }
    return result
}