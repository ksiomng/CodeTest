import Foundation

var n = Int(readLine()!)!
var arr1 = readLine()!.split(separator: " ").map{Int($0)!}
var m = Int(readLine()!)!
var arr2 = readLine()!.split(separator: " ").map{Int($0)!}

var dic = [Int:Int]()

for a2 in arr2 {
    dic[a2] = 0
}

for a1 in arr1 {
    if dic.keys.contains(a1) {
        dic[a1]! += 1
    }
}

for a2 in arr2 {
    print(dic[a2] ?? 0, terminator: " ")
}
