import Foundation

func solution(_ k:Int, _ m:Int, _ score:[Int]) -> Int {
    var scores = score
    var answer = 0
    scores.sort()
    
    for _ in 0..<score.count % m {
        scores.removeFirst()
    }
    
    for i in 0..<(scores.count/m) {
        answer += scores[i*m] * m
    }
    return answer
}