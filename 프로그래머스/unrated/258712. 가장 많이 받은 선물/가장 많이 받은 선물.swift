import Foundation

func solution(_ friends:[String], _ gifts:[String]) -> Int {
    var arrs = [[String]]()
    var dic = [[String]:Int]()
    
    // 준거 받은거 담아서
    var give = Dictionary<String, Int>()
    var take = Dictionary<String, Int>()
    var cnt = Dictionary<String, Int>()
    
    var result = Dictionary<String, Int>()
    
    // 초기값
    for friend in friends {
        give[friend] = 0
        take[friend] = 0
        result[friend] = 0
    }
    
    // 누가 누구에게 선물을 줬는지에 대해 dic에 담기
    for gift in gifts {
        var a = gift.split(separator: " ").map{String($0)}
        dic[a, default: 0] += 1
    }

    // 선물 주고 받은거 각각 담기
    for d in dic {
        give[d.key[0]]! += d.value
        take[d.key[1]]! += d.value
    }

    // 선물 지수 담기
    for friend in friends {
        cnt[friend] = give[friend]! - take[friend]!
    }
    
    // 비교하기
    for i in 0..<friends.count-1 {
        for j in i+1..<friends.count {
            var a = [friends[i], friends[j]]
            var b = [friends[j], friends[i]]
            
            if dic[a, default: 0] > dic[b, default: 0] { // 친구 i가 j 한테 준 선물이 j가 i한테 준 선물보다 클때 존재하지 않으면 0
                result[friends[i]]! += 1 // i가 더 많이 줬기 때문에 i 더하기 1
            }
            else if dic[a, default: 0] < dic[b, default: 0] {// 반대
                result[friends[j]]! += 1
            }
            else{ // 같을 때
                if cnt[friends[i]]! > cnt[friends[j]]! { // 선물지수 비교
                    result[friends[i]]! += 1
                }
                else if cnt[friends[i]]! < cnt[friends[j]]! {
                    result[friends[j]]! += 1
                }
            }
        }
    }
    return result.values.max()!
}
