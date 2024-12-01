import Foundation

let tc = Int(readLine()!)!

for _ in 0..<tc {
    var dic = [Int: [Int]]()
    var set1: Set<Int> = []
    let n = Int(readLine()!)!
    var arr = readLine()!.components(separatedBy:" ").map{Int($0)!}
    set1 = Set(arr)
    for x in set1 {
        let cnt = arr.filter{$0 == x}.count
        if cnt < 6 {
            arr = arr.filter{$0 != x}
        }
    }
    var value = 1
    for x in arr {
        if dic[x] == nil {
            dic[x] = [value]
        } else { 
            dic[x]!.append(value)
        }
        value += 1
    }
    var reduceArr = dic.map{ a in 
        return (a.key, (0...3).map{ a.value[$0] }.reduce(0, +))
    }
    var minVal = 1001
    for x in reduceArr {
        if x.1 < minVal {
            minVal = x.1
        }
    }
    var fillArr = reduceArr.filter{$0.1 == minVal}
    if fillArr.count > 1 {
        var min = 1001
        var result = 0
        for x in fillArr {
            if min > dic[x.0]![4] {
                min = dic[x.0]![4]
                result = x.0
            }
        }
        print(result)    
    } else {
        print(fillArr[0].0)
    }
}