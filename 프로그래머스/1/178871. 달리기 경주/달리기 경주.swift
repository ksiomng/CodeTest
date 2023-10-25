import Foundation

func solution(_ players:[String], _ callings:[String]) -> [String] {
    var dic = [String:Int]()
    var play = players
    var result = [String]()
    for i in 0..<players.count {
        dic[players[i]] = i
    }
    for i in 0..<callings.count {
        var idx = dic[callings[i]]!
        dic[callings[i]]! -= 1
        dic[play[idx-1]]! += 1
        var temp = play[idx-1]
        play[idx-1] = callings[i]
        play[idx] = temp
    }
    let newdic = dic.sorted(by: {$0.1 < $1.1})
    for d in newdic {
        result.append(d.key)
    }
    return result
}
