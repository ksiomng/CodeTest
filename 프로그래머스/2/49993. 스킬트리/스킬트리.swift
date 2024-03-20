import Foundation

func solution(_ skill:String, _ skill_trees:[String]) -> Int {
    var arrs = [String]()
    var result : Int = 0
    for skill_tree in skill_trees {
        var a = ""
        for skills in skill_tree {
            if skill.contains(skills) {
                a.append(skills)
            }
        }
        arrs.append(a)
    }
    
    for arr in arrs {
        if arr == skill.prefix(arr.count) {
            result += 1
        }
    }
    
    return result
}