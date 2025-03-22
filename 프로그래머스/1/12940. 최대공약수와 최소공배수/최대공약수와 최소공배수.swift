func solution(_ n: Int, _ m: Int) -> [Int] {
    let greatestCommonDivisor = gcd(n, m)
    let leastCommonMultiple = (n * m) / greatestCommonDivisor
    return [greatestCommonDivisor, leastCommonMultiple]
}

func gcd(_ a: Int, _ b: Int) -> Int {
    return b == 0 ? a : gcd(b, a % b)
}