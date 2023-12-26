import Foundation

func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    var arr: [[Int]] = Array(repeating: Array(repeating: 0, count: arr2[0].count), count: arr1.count)
    
    for i in 0..<arr.count {
        for j in 0..<arr[i].count {
            for k in 0..<arr1[i].count {
                arr[i][j] += arr1[i][k] * arr2[k][j]
            }
        }
    }
    
    return arr
}