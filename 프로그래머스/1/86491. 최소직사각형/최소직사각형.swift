import Foundation
//
// < 처음풀이 >
//func solution(_ sizes:[[Int]]) -> Int {
//   var max = 0
//   var min = 0
//   for i in 0..<sizes.count {
//       if sizes[i][0] > sizes[i][1] {
//           if (max < sizes[i][0]) {
//               max = sizes[i][0]
//           }
//           if (min < sizes[i][1]) {
//               min = sizes[i][1]
//           }
//       }
//       else {
//           if (max < sizes[i][1]) {
//               max = sizes[i][1]
//           }
//           if (min < sizes[i][0]) {
//               min = sizes[i][0]
//           }
//       }
//   }
//   return (max * min)
//}

// < 리팩토링 >
func solution(_ sizes:[[Int]]) -> Int {
  var maxNum = 0
  var minNum = 0

  for size in sizes {
      maxNum = max(maxNum, size.max()!)
      minNum = max(minNum, size.min()!)
  }
  return maxNum * minNum
}