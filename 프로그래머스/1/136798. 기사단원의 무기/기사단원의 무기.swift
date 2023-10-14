import Foundation

func solution(_ number:Int, _ limit:Int, _ power:Int) -> Int {
    var result = [Int]()
    for i in 1...number {
        
        var cnt = 0
        
        for j in 1...Int(sqrt(Double(i))) {
            if i % j == 0 {
                cnt +=  j * j == i ? 1 : 2
            }
        }
        cnt = cnt > limit ? power : cnt
        result.append(cnt)
    }
    return result.reduce(0, +)
}