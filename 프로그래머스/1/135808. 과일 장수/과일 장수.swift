import Foundation

// < 처음풀이 >
//func solution(_ k:Int, _ m:Int, _ score:[Int]) -> Int {
//    var scores = score
//    var answer = 0
//    scores.sort()
//    
//    for _ in 0..<score.count % m {
//        scores.removeFirst()
//    }
//    
//    for i in 0..<(scores.count/m) {
//        answer += scores[i*m] * m
//    }
//    return answer
//}

// < 리팩토링 >
func solution(_ k:Int, _ m:Int, _ score:[Int]) -> Int {
    let scores = score.sorted(by: >)
    return stride(from: m-1, to: scores.count, by: m)
        .reduce(0, {$0 + scores[$1] * m}) //$0 초기값: m-1 $1 다음에 오는값: m
}