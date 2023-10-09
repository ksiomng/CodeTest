func solution(_ n:Int64) -> [Int] {
    var str = String(n)
    var arr = [Int]()
    for c in str{
        arr.append(Int(String(c))!)
    }
    return arr.reversed()
}