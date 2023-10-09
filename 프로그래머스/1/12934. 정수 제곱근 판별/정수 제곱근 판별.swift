// func solution(_ n:Int64) -> Int64 {
//     for i in 0...n {
//         if (i * i == n) {return (i+1) * (i+1)}
//     }
//     return -1
// }

import Foundation
func solution(_ n:Int64) -> Int64 {
    let t = Int64(sqrt(Double(n))) //sqrt는 제곱근을 판별 -> 정수가 아닐수도 있으니까 더블
    return t * t == n ? (t+1)*(t+1) : -1
}