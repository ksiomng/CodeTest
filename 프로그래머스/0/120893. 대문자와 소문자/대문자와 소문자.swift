import Foundation

func solution(_ my_string:String) -> String {
    var arr = Array(my_string)
    for i in 0..<arr.count {
        if arr[i].isUppercase {
            arr[i] = Character(String(arr[i]).lowercased())
        } else {
            arr[i] = Character(String(arr[i]).uppercased())
        }
    }
    return String(arr)
}