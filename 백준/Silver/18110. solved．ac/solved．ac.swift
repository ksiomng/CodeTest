import Foundation

func calculateDifficulty(n: Int, opinions: [Int]) -> Int {
    guard n > 0 else {
        return 0
    }

    let sortedOpinions = opinions.sorted()
    
    let trimCount = Int(round(Double(n) * 0.15))
    
    let remainingCount = n - 2 * trimCount
    
    let trimmedSum = sortedOpinions[trimCount..<(n - trimCount)].reduce(0, +)
    
    let trimmedAverage = Double(trimmedSum) / Double(remainingCount)
    
    return Int(round(trimmedAverage))
}

if let nString = readLine(), let n = Int(nString) {
    var opinions = [Int]()
    
    for _ in 0..<n {
        if let opinionString = readLine(), let opinion = Int(opinionString) {
            opinions.append(opinion)
        }
    }
    
    let difficulty = calculateDifficulty(n: n, opinions: opinions)
    print(difficulty)
}
