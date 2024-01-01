import Foundation

func solution(_ n:Int, _ control:String) -> Int {
    var result = n
    for s in control {
        if s == "w" {
            result = result + 1
        }
        else if s == "s" {
            result = result - 1
        }
        else if s == "d" {
            result = result + 10
        }
        else if s == "a" {
            result = result - 10
        }
    }
    return result
}