import Foundation

func solution(_ arr:[Int], _ n:Int) -> [Int] {
    var result = arr
    if arr.count%2 == 0 {
       for i in 0..<result.count/2{
           result[i*2 + 1] += n
       }
    } else {
       for i in 0..<result.count/2 + 1{
            result[i*2] += n
       } 
    }
    return result
}