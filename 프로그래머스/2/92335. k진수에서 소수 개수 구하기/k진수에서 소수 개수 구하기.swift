import Foundation

func solution(_ n:Int, _ k:Int) -> Int {
    var str = String(n,radix: k)
    var num: String = ""
    var arr = [String]()
    var result = 0
    
    for s in str {
        if s == "0" {
            if Int(num) ?? 0 > 1 {
                arr.append(num)
            }
            num = ""
        } else {
            num += String(s)
        }
    }
    arr.append(num)
    num = ""
    
    for a in arr {
        if isPrimeNumber(n: Int(a) ?? 0) {
            result += 1
        }
    }
    return result
}

func isPrimeNumber(n: Int) -> Bool {
    if n < 2 {
        return false
    }
    for i in 2..<Int(sqrt(Double(n)) + 1) {
        if n % i == 0 { return false }
    }
    return true
}
