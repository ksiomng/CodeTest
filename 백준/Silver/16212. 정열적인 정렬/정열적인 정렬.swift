import Foundation

var input = Int(readLine()!)!
var arr = readLine()!.split(separator: " ").map{Int(String($0))!}
var result = ""

arr = arr.sorted()
for a in arr {
    result += (String(a) + " ")
}
print(result)
