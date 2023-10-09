func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
    var arr2 = arr.filter{$0 % divisor == 0}.map{$0}.sorted()
    return arr2 == [] ? [-1] : arr2
}