import Foundation

func solution(_ topping:[Int]) -> Int {
    var result:Int = 0

    var p1 = [Int:Int]()
    var p2 = [Int:Int]()
    
    for top in topping {
        p1[top, default: 0] += 1
    }
    for top in topping {
        p1[top]! -= 1
        p2[top, default: 0] += 1
        
        if p1[top] == 0 {
            p1.removeValue(forKey: top)
        }
        
        if p1.count == p2.count {
            result += 1
        }
    }
    return result
}