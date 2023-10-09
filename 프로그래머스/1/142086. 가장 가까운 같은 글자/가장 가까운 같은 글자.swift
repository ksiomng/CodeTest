import Foundation

func solution(_ s:String) -> [Int] {
    let arr = Array(s)
    var answer = [Int]()
    var dic = [Character: Int]()
    
    for i in 0..<arr.count {
        if dic[arr[i]] == nil {
            dic[arr[i]] = i
            answer.append(-1)
        }
        else {
            answer.append(i-dic[arr[i]]!)
            dic[arr[i]] = i
        }
    }
    return answer
}