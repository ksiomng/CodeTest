import Foundation

func solution(_ k:Int, _ tangerine:[Int]) -> Int {
    var arr = tangerine.sorted()
    var cnt = [Int](repeating: 0, count: tangerine.max()! + 1)
    var result:Int = 0
    var a:Int = 0
    for a in arr {
        cnt[a] += 1
    }
    cnt.removeFirst()
    cnt = cnt.sorted(by: > )
    for c in cnt {
        a  += c
        result += 1
        if a >= k {
            break
        }
    }
    return result
}
