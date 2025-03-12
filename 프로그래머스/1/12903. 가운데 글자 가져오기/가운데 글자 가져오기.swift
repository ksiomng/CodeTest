func solution(_ s: String) -> String {
    let arr = Array(s)
    let mid = arr.count / 2
    return arr.count % 2 == 0 ? String(arr[mid-1]) + String(arr[mid]) : String(arr[mid])
}
