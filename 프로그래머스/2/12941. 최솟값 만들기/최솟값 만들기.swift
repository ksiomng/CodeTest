import Foundation

func solution(_ A:[Int], _ B:[Int]) -> Int {
  var arrayA = A.sorted()
  var arrayB = B.sorted()
  var sum = 0
  
  for _ in 0..<A.count {
    sum += arrayA.removeFirst() * arrayB.removeLast()
  }
  
  return sum
}