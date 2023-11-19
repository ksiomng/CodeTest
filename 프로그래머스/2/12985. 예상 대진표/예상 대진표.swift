import Foundation

func solution(_ n:Int, _ a:Int, _ b:Int) -> Int
{
    var A = a
    var B = b
    var result = 0
    
    while (true) {
        A = A%2 == 0 ? (A/2) : (A/2+1)
        B = B%2 == 0 ? (B/2) : (B/2+1)
        result += 1
        if A == B {
            break
        }
    }
    return result
}