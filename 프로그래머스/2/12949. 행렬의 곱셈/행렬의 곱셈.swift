import Foundation

func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    let rowCount = arr1.count
    let colCount = arr2[0].count
    let middleCount = arr2.count
    
    var result = Array(repeating: Array(repeating: 0, count: colCount), count: rowCount)
    
    for i in 0..<rowCount {
        for j in 0..<colCount {
            for k in 0..<middleCount {
                result[i][j] += arr1[i][k] * arr2[k][j]
            }
        }
    }
    
    return result
}
