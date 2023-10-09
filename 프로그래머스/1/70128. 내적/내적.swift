func solution(_ a:[Int], _ b:[Int]) -> Int {
    var c = 0
    for i in 0..<a.count {
        c += a[i] * b[i]
    }
    return c
    
//  return zip(a, b).map(*).reduce(0, +)
}