import Foundation

var input = readLine()!.split(separator: " ").map{Int(String($0))!}
var cnt = input[0]
var idx = input[1]
var dq = Array(1...cnt)

print("<", terminator: "")
while dq.count > 1 {
    if idx == 1 {
        idx = input[1]
        print(dq.removeFirst(), terminator: ", ")
    } else {
        dq.append(dq.removeFirst())
        idx -= 1
    }
}
print(dq.removeFirst(), terminator:">")
