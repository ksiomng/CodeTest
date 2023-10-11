//import Foundation

// < 처음풀이 >
//func solution(_ nums:[Int]) -> Int {
//    var arrs = [Int]()
//    var cnt = 0
//    
//    for i in 0..<nums.count-2 {
//        for j in i+1..<nums.count-1 {
//            for k in j+1..<nums.count {
//                    arrs.append(nums[i] + nums[j] + nums[k])
//            }
//        }
//    }
//    for i in 0..<arrs.count {
//        var bool = true
//        
//        for j in 2..<arrs[i] {
//                if arrs[i] % j == 0 { bool = false }
//        }
//        if bool == true {
//            cnt += 1
//        }
//    }
//    return cnt
//}

// < 리팩토링 >
func isPrime(_ num:Int) -> Bool {
    for i in 2..<num { if num % i == 0 { return false } }
    return true
}

func solution(_ nums:[Int]) -> Int {
    var answer = 0
    for i in 0..<nums.count-2 {
        for j in i+1..<nums.count-1 {
            for k in j+1..<nums.count {
                if isPrime(nums[i]+nums[j]+nums[k]) { answer += 1 }
            }
        }
    }
    return answer
}