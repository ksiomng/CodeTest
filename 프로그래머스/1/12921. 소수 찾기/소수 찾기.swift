import Foundation

func isPrimeNumber(n: Int) -> Bool { // 소수판별 함수, 자기 자신의 제곱근 까지만 확인하면 소수 판별가능
    if n < 2 {
        return false
    }
    for i in 2..<Int(sqrt(Double(n)) + 1) {
        if n % i == 0 { return false }
    }
    return true
}

func solution(_ n:Int) -> Int {
    return Array(1...n).filter{isPrimeNumber(n: $0)}.count
}