import Foundation

var fir = Int(readLine()!)!
var sec = Int(readLine()!)!
let mul = fir * sec

while sec != 0 {
    var ten = sec % 10
    sec /= 10
    print(fir*ten)
}

print(mul)