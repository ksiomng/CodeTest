import Foundation

func solution(_ babbling:[String]) -> Int {
    var arrs = [String]()
    var count = 0
    
    for babble in babbling {
        arrs.append(
            babble.replacingOccurrences(of: "aya", with: "1")
                .replacingOccurrences(of: "ye", with: "2")
                .replacingOccurrences(of: "woo", with: "3")
                .replacingOccurrences(of: "ma", with: "4")
        )
    }

    for arr in arrs {
        if let result = Int(arr) {
            if !String(result).contains("11") && !String(result).contains("22") && !String(result).contains("33") && !String(result).contains("44") {
                count += 1
            }
        }
    }
    return count
}