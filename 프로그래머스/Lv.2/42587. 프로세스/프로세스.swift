import Foundation

func solution(_ priorities: [Int], _ location: Int) -> Int {
    // enumerated() 메서드를 사용하여 (인덱스, 값) 튜플로 이루어진 배열을 만듭니다.
    var queue = priorities.enumerated().map { $0 }

    var idx = 0

    // 큐가 비어 있을 때까지 반복합니다.
    while !queue.isEmpty {
        // 현재 큐의 맨 앞 문서의 중요도보다 큰 중요도를 가진 문서가 있는지 확인합니다.
        if queue.first(where: { $0.1 > queue[0].1 }) != nil {
            queue.append(queue[0])
            queue.removeFirst()
        } else {
            // 배열의 첫번째 값을 1이라 출력해야 하므로 1을 먼저 더하고 시작합니다.
            idx += 1
            
            // 원하는 문서를 찾았을 경우 해당 인덱스를 반환합니다.
            if queue.removeFirst().0 == location {
                return idx
            }
        }
    }

    return 0
}