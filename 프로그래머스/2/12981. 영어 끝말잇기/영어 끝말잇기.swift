import Foundation

func solution(_ n:Int, _ words:[String]) -> [Int] {
    var arr:[String] = []
    
    for i in 0..<words.count {
        if !arr.isEmpty {
            for s in arr {
                if s == words[i] {
                    print(i)
                    return [(i%n)+1,(i/n)+1]
                }
            }
            if arr[arr.count-1].last != words[i].first {
                print(i)
                return [(i%n)+1,(i/n)+1]
            }
        }
        arr.append(words[i])
    }
    return [0,0]
}
