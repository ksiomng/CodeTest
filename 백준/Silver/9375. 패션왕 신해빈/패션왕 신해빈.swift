import Foundation

let N = Int(readLine()!)!
var dic = [String: Int]()
var cnt = 0

for _ in 0..<N {
    let M = Int(readLine()!)!
    for _ in 0..<M {
        let nm = readLine()!.split(separator: " ")
        if dic[String(nm[1])] != nil {
            dic[String(nm[1])]! += 1
        } else {
            dic[String(nm[1])] = 2
        }
    }
    print(dic.values.reduce(1, *)-1)
    dic.removeAll()
}
