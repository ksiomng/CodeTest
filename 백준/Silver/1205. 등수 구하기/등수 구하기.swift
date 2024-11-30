import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let N = input[0]
let newScore = input[1]
let P = input[2]

var ranking: [Int] = []
if N > 0 {
    ranking = readLine()!.split(separator: " ").map { Int($0)! }
}

func calculateRank(ranking: [Int], newScore: Int, P: Int) -> Int {
    var updatedRanking = ranking
    updatedRanking.append(newScore)
    updatedRanking.sort(by: >)
    
    let rank = updatedRanking.firstIndex(of: newScore)! + 1
    
    if updatedRanking.count > P && updatedRanking.last! == newScore {
        return -1
    }
    
    return rank
}

if N == 0 {
    print(1)
} else {
    print(calculateRank(ranking: ranking, newScore: newScore, P: P))
}
