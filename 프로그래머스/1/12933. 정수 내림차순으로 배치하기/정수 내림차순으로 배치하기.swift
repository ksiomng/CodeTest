func solution(_ n:Int64) -> Int64 {
    var str = String(n).sorted(by: >)
    var result:Int64 = 0
    for s in str {
        if result != 0 {
            result *= 10
        }
        result += Int64(String(s))!
    }
    return result
}