import Foundation

func solution(_ N:Int, _ stages:[Int]) -> [Int] {
    let countarr = NSCountedSet(array:stages)
    var dic = [Int:Double]()
    var sum = stages.count
    var result = [Int]()
    
    for i in 1...N {
        var cnt: Int = 0
         cnt = countarr.count(for: i)
        if cnt == 0 {
            dic[i] = 0.0
        }
        else {
            dic[i] = Double(Double(cnt)/Double(sum))
        }
        sum -= cnt
    }
    let sortdic = dic.sorted {
                                              if $0.1 == $1.1 {
                                                  return $0.0 < $1.0
                                              }
                                              return $0.1 > $1.1 }
    for i in sortdic {
        result.append(i.key)
    }
    return result
}