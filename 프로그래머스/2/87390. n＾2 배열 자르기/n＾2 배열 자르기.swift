import Foundation

func solution(_ n: Int, _ left: Int64, _ right: Int64) -> [Int] {
    var result: [Int] = []
    
    for index in left...right {
        let row = Int(index / Int64(n))
        let col = Int(index % Int64(n))
        
        // 해당 위치의 값은 max(row, col) + 1
        result.append(max(row, col) + 1)
    }
    
    return result
}