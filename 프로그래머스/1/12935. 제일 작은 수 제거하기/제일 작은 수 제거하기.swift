func solution(_ arr:[Int]) -> [Int] {
    var arr2 = arr
    arr2.remove(at: arr.firstIndex(of: (arr.min())!)!)
    return arr2 == [] ? [-1]:arr2
}