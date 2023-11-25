import Foundation

func solution(_ ineq:String, _ eq:String, _ n:Int, _ m:Int) -> Int {
    return predicate(ineq, eq, n, m) ? 1: 0
    
}

func predicate(_ ineq:String, _ eq:String, _ n:Int, _ m:Int) -> Bool {
    if eq == "=" {
        if ineq == ">" {
            return n >= m
        } else {
            return n <= m
        }
    } else {
        if ineq == ">" {
            return n > m
        } else {
            return n < m
        }
    }
}