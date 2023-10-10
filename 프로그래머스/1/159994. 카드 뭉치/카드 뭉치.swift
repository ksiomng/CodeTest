import Foundation

func solution(_ cards1:[String], _ cards2:[String], _ goal:[String]) -> String {
    var idx1 = 0
    var idx2 = 0
    
    for i in 0..<goal.count {
        if goal[i] == cards1[idx1] {
            idx1 += 1
            if idx1 >= cards1.count {
                idx1 = cards1.count-1
            }
        }
        else {
            if goal[i] == cards2[idx2] {
                idx2 += 1
                if idx2 >= cards2.count {
                    idx2 = cards2.count-1
                }
            }
            else {
                return "No"
            }
        }
    }
    return "Yes"
}