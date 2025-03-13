func solution(_ n:Int) -> String {
    var result: String = ""
    for i in 0..<n {
        if i % 2 == 0 {
            result += "수"
        } else {
            result += "박"
        }
    }
    return result
}