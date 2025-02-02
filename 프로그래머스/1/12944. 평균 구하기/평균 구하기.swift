func solution(_ arr:[Int]) -> Double {
    var result = 0
    for a in arr {
        result += a
    }
    return Double(result)/Double(arr.count)
}