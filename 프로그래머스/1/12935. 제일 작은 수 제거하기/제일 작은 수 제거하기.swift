func solution(_ arr:[Int]) -> [Int] {
    guard let minValue = arr.min() else { return [-1] }
    let result = arr.filter { $0 != minValue }
    return result.isEmpty ? [-1] : result
}
