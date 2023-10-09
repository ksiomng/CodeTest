import Foundation
//
// < 처음풀이 >
// func solution(_ lottos:[Int], _ win_nums:[Int]) -> [Int] {
//    let cnt = lottos.filter{win_nums.contains($0)}.count
//    let zcnt = lottos.filter{$0 == 0}.count
//    let min = cnt > 0 ? 7 - cnt : 6
//    let max = zcnt > 0 ? 7 - (cnt+zcnt) : min
//    return [max,  min]
// }

// < 리팩토링 >
func solution(_ lottos:[Int], _ win_nums:[Int]) -> [Int] {
  let cnt = lottos.filter{win_nums.contains($0)}.count
  let zcnt = lottos.filter{$0 == 0}.count
  let ranking = [6, 6, 5, 4, 3, 2, 1]
  return [ranking[cnt+zcnt],  ranking[cnt]]
}