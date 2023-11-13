import Foundation

func solution(_ s:String) -> String {
    var arr = Array(s)
    var result = ""
    for i in 0..<arr.count {
        if i == 0 {
            arr[i] = Character(String(arr[i].uppercased()))
        }
        else {
            if arr[i].isUppercase {
                arr[i] = Character(String(arr[i].lowercased()))
            }
            if arr[i-1] == " " {
                arr[i] = Character(String(arr[i].uppercased()))
            }   
        }
    }
    return String(arr)
}
