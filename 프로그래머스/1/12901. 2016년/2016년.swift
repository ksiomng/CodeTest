func solution(_ a:Int, _ b:Int) -> String {
    var cnt = 0
    let months = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    let days = ["THU","FRI","SAT","SUN","MON","TUE","WED"]
    for i in 0..<(a-1) {
        cnt += months[i]
    }
    cnt += b
    return days[(cnt%7)]
}