import Foundation

func solution(_ hp:Int) -> Int {
    var cnt:Int = 0
    var hp:Int = hp

    if hp/5 > 0 {
        cnt += hp/5
        hp = hp%5
    }
    if hp/3 > 0 {
        cnt += hp/3
        hp = hp%3
    }
    if hp != 0 {
        cnt += hp 
    }
    return cnt
}