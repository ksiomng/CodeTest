import Foundation

func solution(_ n:Int) -> Int {
    var N: Int = n
    var cnt:Int = 0
    while N != 0 {
        if N % 2 == 0 {
            N /= 2
        } else {
            N -= 1
            cnt += 1
        }
    }
    return cnt
}