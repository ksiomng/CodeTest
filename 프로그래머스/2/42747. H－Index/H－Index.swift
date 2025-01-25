import Foundation

func solution(_ citations: [Int]) -> Int {
    let sorted = citations.sorted(by: >)
    var h = 0
    
    for (index, citation) in sorted.enumerated() {
        if citation >= index + 1 {
            h = index + 1
        } else {
            break
        }
    }
    
    return h
}
