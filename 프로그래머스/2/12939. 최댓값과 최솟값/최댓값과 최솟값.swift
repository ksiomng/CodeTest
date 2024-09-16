func solution(_ s:String) -> String {
    var arr = s.split(separator: " ")
    var result = [Int]()
    for a in arr {
        result.append(Int(a)!)
    }
    return String(result.min()!) + " " + String(result.max()!)
}