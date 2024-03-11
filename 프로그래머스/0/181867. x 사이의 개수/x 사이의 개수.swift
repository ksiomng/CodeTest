import Foundation

func solution(_ myString:String) -> [Int] {
    var result = [Int]()
    var a:Int = 0
    
    for my in myString {
        if my == "x" {
            result.append(a)
            a = 0
        } else {
            a += 1
        }
    }
    result.append(a)
    return result
}