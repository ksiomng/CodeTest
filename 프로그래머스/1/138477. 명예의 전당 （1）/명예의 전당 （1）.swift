import Foundation

func solution(_ k:Int, _ score:[Int]) -> [Int] {
    var arrs = [Int]()
    var answer = [Int]()
    for i in 0..<score.count {
        if arrs.count < k {
            arrs.append(score[i])
            arrs.sort()
            answer.append(arrs[0])
        }
        else {
            arrs.append(score[i])
            arrs.sort()
            arrs.remove(at: 0)
            answer.append(arrs[0])
        }
    }
    return answer
}