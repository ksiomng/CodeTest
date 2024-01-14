import Foundation

func solution(_ priorities: [Int], _ location: Int) -> Int {
    var queue = priorities.enumerated().map { $0 }
    
    var count = 0

    while !queue.isEmpty {
        if queue.first(where: { $0.1 > queue[0].1 }) != nil {
            queue.append(queue[0])
            queue.removeFirst()
        } else {
            count += 1
            if queue.removeFirst().0 == location {
                return count
            }
        }
    }

    return 0
}