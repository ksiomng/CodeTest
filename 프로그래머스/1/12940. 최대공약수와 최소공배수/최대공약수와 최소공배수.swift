func solution(_ n:Int, _ m:Int) -> [Int] {
    var num  = 1
    for i in 2...n {
        for j in 2...m {
            if n % i == 0 && m % j == 0 &&  i ==  j {
                num = i
                break
            }
        }
    }
    return [num,(n*m)/num]
}