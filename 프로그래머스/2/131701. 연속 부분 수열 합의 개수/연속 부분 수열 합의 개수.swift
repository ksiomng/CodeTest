import Foundation

func solution(_ elements: [Int]) -> Int {
    let n = elements.count
    var uniqueSums = Set<Int>()
    var prefixSums = [0] // 누적 합 배열 (0부터 시작)
    
    // 누적 합 배열 생성
    for element in elements {
        prefixSums.append(prefixSums.last! + element)
    }
    
    // 길이별로 부분 합 계산
    for length in 1...n {
        for start in 0..<n {
            let end = (start + length) % n
            let sum = start < end
                ? prefixSums[end] - prefixSums[start]
                : prefixSums[n] - prefixSums[start] + prefixSums[end]
            uniqueSums.insert(sum)
        }
    }
    
    return uniqueSums.count
}