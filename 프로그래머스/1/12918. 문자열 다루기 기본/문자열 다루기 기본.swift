func solution(_ s:String) -> Bool {
    for s in s {
        if !s.isNumber {
            return false
        }
    }
    return s.count == 4 || s.count == 6 ? true : false
}