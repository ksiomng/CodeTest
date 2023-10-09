import Foundation

func solution(_ name:[String], _ yearning:[Int], _ photo:[[String]]) -> [Int] {
    var answer = [Int]()
    var dic = [String : Int]()
    for i in 0..<name.count {
        dic[name[i]] = yearning[i]
    }
    for i in 0..<photo.count {
        var cnt = 0
        for j in 0..<photo[i].count {
            if dic[photo[i][j]] != nil {
                cnt += dic[photo[i][j]]!
            }
        }
        answer.append(cnt)
    }
    return answer
}