func solution(_ s:String) -> String {
    var adr = s.count/2
    var arr = s.count%2 == 0 ? [Array(s)[adr-1], Array(s)[adr]] : [Array(s)[adr]]
    return String(arr)
}