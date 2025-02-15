import Foundation

func solution(_ s: String) -> Bool {
    let lowercasedS = s.lowercased()
    let pCount = lowercasedS.filter { $0 == "p" }.count
    let yCount = lowercasedS.filter { $0 == "y" }.count
    
    return pCount == yCount
}
