import Foundation

func solution(_ my_string:String) -> String {
    var str = my_string
    str = str.replacingOccurrences(of: "[aeiou]", with: "", options: .regularExpression)
    return str
}