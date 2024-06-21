import Foundation

let n = Int(readLine()!)!

let MOD = 10007
var dp = [Int](repeating: 0, count: max(n + 1, 3))
dp[1] = 1
dp[2] = 2

if n > 2 {
    for i in 3...n {
        dp[i] = (dp[i-1] + dp[i-2]) % MOD
    }
}

print(dp[n])