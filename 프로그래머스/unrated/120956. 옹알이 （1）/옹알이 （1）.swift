import Foundation

func solution(_ babbling:[String]) -> Int {
    let words = ["aya", "ye", "woo", "ma"]
    var result = 0

    for i in babbling {
        var bab = i
        for j in words {
            bab = bab.replacingOccurrences(of: j, with: "1")
        }
        if let _ = Int(bab) {
            result += 1
        }
    }
    return result
}