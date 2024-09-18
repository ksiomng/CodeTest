func solution(_ n:Int) -> Int {
    var dp: [Int] = [0, 1, 2]
    
    if n >= 3 {
        for i in 3...n {
            dp.append((dp[i-2] + dp[i-1]) % 1234567)
        }
    }
    
    return (dp[n])
}