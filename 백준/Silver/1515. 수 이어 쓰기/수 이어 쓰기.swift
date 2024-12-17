import Foundation

let remaining = Array(readLine()!)
let targetLength = remaining.count

var currentIndex = 0
var N = 0

while true {
    N += 1
    let numberString = String(N)
    
    for char in numberString {
        if char == remaining[currentIndex] {
            currentIndex += 1
            if currentIndex == targetLength {
                print(N)
                exit(0)
            }
        }
    }
}
