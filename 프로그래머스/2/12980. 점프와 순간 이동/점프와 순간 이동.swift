import Foundation

func solution(_ n:Int) -> Int
{
    var a:Int = n
    var result:Int = 0
    
    while a != 0 {
        if (a%2 == 0) {
            a = a/2
        }
        else {
            a -= 1
            result += 1
        }
    }
    return result
}