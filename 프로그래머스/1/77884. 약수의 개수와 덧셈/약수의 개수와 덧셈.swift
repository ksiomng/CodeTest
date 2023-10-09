import Foundation

func solution(_ left:Int, _ right:Int) -> Int {
    var num = 0
    for i in left...right {
        var cnt = 0
        for j in 1...i {
            if (i % j == 0) {
                cnt += 1
            }
        }
        cnt%2 == 0 ? (num += i) : (num -= i)
    }
    return num
}