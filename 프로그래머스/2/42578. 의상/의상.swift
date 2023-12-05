import Foundation

func solution(_ clothes:[[String]]) -> Int {
    var dic = [String:Int]()
    var result: Int = 1
    for clothe in clothes {
        dic[clothe[1]] = 0
    }
    for clothe in clothes {
        dic[clothe[1]]! += 1
    }
    for d in dic.values {
        result *= (d + 1)

    }
    return result - 1
}