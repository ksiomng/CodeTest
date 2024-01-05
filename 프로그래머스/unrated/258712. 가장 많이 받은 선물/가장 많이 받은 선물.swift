import Foundation

func solution(_ friends:[String], _ gifts:[String]) -> Int {
    var arrs = [[String]]()
    var dic = [[String]:Int]()
    
    // 준거 받은거 담아서
    var give = Dictionary<String, Int>()
    var take = Dictionary<String, Int>()
    var cnt = Dictionary<String, Int>()
    
    var result = Dictionary<String, Int>()
    
    // dic 를 친구 수 만큼 각각 만들어주기
    for friend in friends {
        give[friend] = 0
        take[friend] = 0
        result[friend] = 0
        for f in friends {
            if f != friend {
                var a = [friend, f]
                dic[a] = 0
            }
        }
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
            
            if dic[a]! > dic[b]! { // 친구 i가 j 한테 준 선물이 j가 i한테 준 선물보다 클때
                result[friends[i]]! += 1 // i가 더 많이 줬기 때문에 i 더하기 1
            }
            else if dic[a]! < dic[b]! {// 반대
                result[friends[j]]! += 1
            }
            else{
                if cnt[friends[i]]! > cnt[friends[j]]! {
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