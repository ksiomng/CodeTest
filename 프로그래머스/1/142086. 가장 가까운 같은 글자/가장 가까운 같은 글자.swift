import Foundation

func solution(_ s: String) -> [Int] {
    var dic = [Character: Int]()
    var arr = [Int]()
    
    for (index, c) in s.enumerated() {
        if let lastIndex = dic[c] {
            arr.append(index - lastIndex)
        } else {
            arr.append(-1)
        }
        dic[c] = index
    }
    
    return arr
}
