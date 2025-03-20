import Foundation

let n = readLine()!.components(separatedBy: [" "]).map { Int($0)! }
let (a, b) = (n[0], n[1])

for i in 0..<n[1] {
    for j in 0..<n[0] {
        print("*", terminator: "")
    }
    print("")
}