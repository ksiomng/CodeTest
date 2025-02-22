func solution(_ x:Int) -> Bool {
    var sum: Int = 0
    for str in String(x) {
        sum += Int(String(str))!
    }
    return x % sum == 0
}