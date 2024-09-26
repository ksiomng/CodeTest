import Foundation

let N = Int(readLine()!)!
let A = readLine()!.split(separator: " ").map { Int($0)! }
let BC = readLine()!.split(separator: " ").map { Int($0)! }
let B = BC[0]
let C = BC[1]

var totalSupervisors = 0

for i in 0..<N {
    var students = A[i]
    
    totalSupervisors += 1
    students -= B
    
    if students > 0 {
        totalSupervisors += (students + C - 1) / C
    }
}

print(totalSupervisors)
