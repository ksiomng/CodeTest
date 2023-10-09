import Foundation

func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
    var total = 0
    for i in 1...count { total += (i * price) }

    var answer:Int64 = -1
    answer = (total > money) ? Int64(total - money):0

    return answer
}