import Foundation

func solution(_ my_string:String, _ is_suffix:String) -> Int {
    var arr = Array(my_string).suffix(is_suffix.count)
    return String(arr).contains(is_suffix) ? 1 : 0
}