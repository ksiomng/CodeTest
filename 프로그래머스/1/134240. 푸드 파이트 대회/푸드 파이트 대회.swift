import Foundation
//
// < 처음풀이 >
//func solution(_ food:[Int]) -> String {
//    var arr = [0]
//    var answer = ""
//    for i in (1..<food.count).reversed() {
//        for _ in 0..<(food[i]/2) {
//            arr.insert(i, at: arr.endIndex)
//            arr.insert(i, at: arr.startIndex)
//        }
//    }
//    for c in arr {
//        answer += String(c)
//    }
//    return answer
//}

// < 리팩토링 >
func solution(_ food:[Int]) -> String {
    var result = ""
    for i in 1..<food.count {
        result += String(repeating: String(i), count: food[i] / 2)
    }
    return result + "0" + result.reversed()
}