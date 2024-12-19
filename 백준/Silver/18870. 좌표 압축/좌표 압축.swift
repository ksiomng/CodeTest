import Foundation

let N = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map{ Int(String($0))! }
var dict = [Int : Int]()
var move = 0

for i in arr.sorted() {
    if dict[i] == nil {
        dict[i] = move
        move += 1
    }
}

print("\(arr.map{ String(dict[$0]!) }.joined(separator: " "))")