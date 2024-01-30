import Foundation

func solution(_ operations:[String]) -> [Int] {
    var oper = operations
    var queue:[Int] = []
    
    for i in 0..<oper.count {
        if oper[i].removeFirst() == "I" {
            oper[i].removeFirst()
            queue.append(Int(oper[i])!)
            queue = queue.sorted()
        } else {
            oper[i].removeFirst()
            if !queue.isEmpty {
                if oper[i] == "-1" {
                    queue.removeFirst()
                } else {
                    queue.removeLast()
                }
            }
        }
    }
    return [queue.max() ?? 0,queue.min() ?? 0]
}
