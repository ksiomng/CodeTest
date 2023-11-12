import Foundation

func solution(_ dartResult:String) -> Int {
    var scores = dartResult.split(whereSeparator: { !$0.isNumber }).map{ Int($0)! }
    let letters = dartResult.split(whereSeparator: { $0.isNumber })
    var result = 0

    for i in 0..<letters.count {
        if letters[i].contains("D") {
            scores[i] = (scores[i] * scores[i])
        }
        if letters[i].contains("T") {
            scores[i] = (scores[i] * scores[i] * scores[i])
        }
        if letters[i].contains("#") {
            scores[i] *= -1
        }
        if letters[i].contains("*") {
            for j in (i > 0 ? i-1 : 0)...i {
                scores[j] *= 2
            }
        }
    }
    for score in scores {
        result += score
    }
    return result
}