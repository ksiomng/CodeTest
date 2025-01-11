func solution(_ n: Int) -> Int {
    let MOD = 1234567
    var fib = [0, 1]
    
    for i in 2...n {
        fib.append((fib[i-1] + fib[i-2]) % MOD)
    }
    
    return fib[n]
}