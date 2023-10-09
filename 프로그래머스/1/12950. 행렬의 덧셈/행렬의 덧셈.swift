import Foundation
//
// < 처음풀이 >
func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
   var answer1 : [Int] = []
   var answer2 : [[Int]] = []

   for i in 0..<arr1.count {
       for j in 0..<arr1[i].count {
           answer1.append(arr1[i][j]+arr2[i][j])
       }
       answer2.append(answer1)
       answer1 = []
   }
   return answer2
}
//
// < 리팩토링 >
// func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
//    return zip(arr1, arr2).map{zip($0,$1).map{$0+$1}}
// }