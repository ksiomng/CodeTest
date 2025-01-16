import Foundation

func solution(_ k: Int, _ tangerine: [Int]) -> Int {
    var countDict = [Int: Int]()
    
    // 각 크기별 귤 개수 세기
    for t in tangerine {
        countDict[t, default: 0] += 1
    }
    
    // 크기별 귤 개수를 내림차순으로 정렬
    let sortedCounts = countDict.values.sorted(by: >)
    
    var selected = 0
    var types = 0
    
    // 가장 많이 있는 크기부터 k개를 채우기
    for count in sortedCounts {
        selected += count
        types += 1
        if selected >= k {
            break
        }
    }
    
    return types
}