import Foundation

let n = Int(readLine()!)!
var scores = [Int]()

for _ in 0..<n {
    scores.append(Int(readLine()!)!)
}

if n == 1 {
    print(scores[0])
} else if n == 2 {
    print(scores[0] + scores[1])
} else {
    var dp = Array(repeating: 0, count: n)

    dp[0] = scores[0]
    dp[1] = scores[0] + scores[1]
    dp[2] = max(scores[0] + scores[2], scores[1] + scores[2])
    
    for i in 3..<n {
        dp[i] = max(dp[i-2] + scores[i], dp[i-3] + scores[i-1] + scores[i])
    }
    
    print(dp[n-1])
}