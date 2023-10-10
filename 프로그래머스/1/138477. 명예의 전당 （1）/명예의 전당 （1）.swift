import Foundation

func solution(_ k:Int, _ score:[Int]) -> [Int] {
    var arrs = [Int]()
    var answer = [Int]()
    for i in 0..<score.count {
        arrs.append(score[i])
        arrs.sort()
        if arrs.count <= k {
            answer.append(arrs[0])
        }
        else {
            arrs.remove(at: 0)
            answer.append(arrs[0])
        }
    }
    return answer
}