func solution(_ s:String) -> String {
    var arr = s.split(separator: " ").map{Int($0)!}
    arr = arr.sorted()
    return (String(arr[0]) + " " + String(arr[arr.count-1]))
}