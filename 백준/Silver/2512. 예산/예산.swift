import Foundation

let n = Int(readLine()!)!
let requests = readLine()!.split(separator: " ").map { Int($0)! } // 예산 요청 배열
let totalBudget = Int(readLine()!)!

// 이분 탐색
func findMaxCap(requests: [Int], totalBudget: Int) -> Int {
    var low = 0
    var high = requests.max()!
    var result = 0
    
    while low <= high {
        let mid = (low + high) / 2
        let allocatedBudget = requests.reduce(0) { $0 + min($1, mid) }
        
        if allocatedBudget <= totalBudget {
            result = mid
            low = mid + 1
        } else {
            high = mid - 1
        }
    }
    return result
}

print(findMaxCap(requests: requests, totalBudget: totalBudget))
