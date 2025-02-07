func solution(_ n:Int64) -> [Int] {
    var result = [Int]()
    var num: Int64 = n
    while num != 0 {
        result.append(Int(num%10))
        num /= 10
    }
    return result
}