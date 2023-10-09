import Foundation

func solution(_ n:Int) -> Int
{
    var answer = 0
    var str = String(n)
    for c in str {
        answer += Int(String(c))!
    }
    return answer
}