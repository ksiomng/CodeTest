func solution(_ s:String) -> String {
    var arr = Array(s)
    var cnt = 0
    for i in 0..<arr.count {
        if arr[i] != " " {
            cnt += 1
        } else {
            cnt = 0
        }
        if cnt % 2 != 0 {
            arr[i] = Character(String(arr[i]).uppercased())
        } else {
            arr[i] = Character(String(arr[i]).lowercased())
        }
    }
    return String(arr)
}