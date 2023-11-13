import Foundation

func solution(_ s:String) -> [Int] {
    var str:String = s
    var result1:Int = 0
    var result2:Int = 0
    while (true) {
        var i = str.filter{$0 == "0"}.count
        result1 += i
        var k = str.count - i
        str = String(k, radix: 2)
        result2 += 1
        if k <= 1 {
            break
        }
    }
    return [result2, result1]
}