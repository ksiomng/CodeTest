import Foundation

func solution(_ n: Int) -> Int {
    // 1. 10진수를 3진법 문자열로 변환
    var ternary = ""
    var num = n
    
    while num > 0 {
        ternary = String(num % 3) + ternary
        num /= 3
    }
    
    // 2. 3진법 문자열을 뒤집기
    let reversedTernary = String(ternary.reversed())
    
    // 3. 뒤집은 3진법 문자열을 다시 10진수로 변환
    return Int(reversedTernary, radix: 3) ?? 0
}