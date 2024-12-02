import Foundation

func minimumLampHeight() {
    let n = Int(readLine()!)!
    let m = Int(readLine()!)!
    let lampPositions = readLine()!.split(separator: " ").map { Int($0)! }
    
    var maxGap = 0
    for i in 1..<m {
        maxGap = max(maxGap, lampPositions[i] - lampPositions[i - 1])
    }

    let startGap = lampPositions[0] - 0
    let endGap = n - lampPositions[m - 1]
    
    let result = max((maxGap + 1) / 2, startGap, endGap)
    print(result)
}

minimumLampHeight()