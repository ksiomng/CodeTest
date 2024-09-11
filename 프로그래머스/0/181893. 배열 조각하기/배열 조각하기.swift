import Foundation

func solution(_ arr: [Int], _ query: [Int]) -> [Int] {
    var result = arr
    
    for i in 0..<query.count {
        let index = query[i]
        
        if i % 2 == 0 {
            result = Array(result[0...index])
        } else {
            result = Array(result[index...])
        }
    }
    
    return result
}
