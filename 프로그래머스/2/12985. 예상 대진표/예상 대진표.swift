import Foundation

func solution(_ n: Int, _ a: Int, _ b: Int) -> Int {
    var result: Int = 0
    var A: Int = a
    var B: Int = b
    
    while A != B {
        A = (A + 1) / 2
        B = (B + 1) / 2
        result += 1
    }
    
    return result
}