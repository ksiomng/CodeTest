func solution(_ s:String) -> String {
    var arr = s.split(separator: " ").map{Int($0)!}
    var result = ""
    arr = arr.sorted()
    result.append(contentsOf: String(arr[0]))
    result.append(" ")
    result.append(contentsOf: String(arr[arr.count-1]))
    return result
}