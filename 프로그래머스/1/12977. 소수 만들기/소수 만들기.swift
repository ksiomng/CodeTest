import Foundation

import Foundation

func solution(_ nums:[Int]) -> Int {
    var arrs = [Int]()
    var cnt = 0
    
    for i in 0..<nums.count-2 {
        for j in i+1..<nums.count-1 {
            for k in j+1..<nums.count {
                    arrs.append(nums[i] + nums[j] + nums[k])
            }
        }
    }
    for i in 0..<arrs.count {
        var bool = true
        
        for j in 2..<arrs[i] {
                if arrs[i] % j == 0 { bool = false }
        }
        if bool == true {
            cnt += 1
        }
    }
    return cnt
}