import Foundation

func solution(_ n:Int) -> Int{
    var str = String(n)
    var answer = 0
    
    for s in str {
        answer += Int(String(s))!
    }
    
    return answer
}