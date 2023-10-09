func solution(_ n:Int) -> String {
    return String(String(repeating: "수박", count: n/2+1).prefix(n))
}