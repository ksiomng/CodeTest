import Foundation

func solution(_ clothes: [[String]]) -> Int {
    var clothesCount: [String: Int] = [:]
    
    // 의상 종류별로 개수를 세기
    for cloth in clothes {
        let category = cloth[1]
        clothesCount[category, default: 0] += 1
    }
    
    // 조합 계산
    var result = 1
    for count in clothesCount.values {
        result *= (count + 1)
    }
    
    // 아무것도 입지 않는 경우 제외
    return result - 1
}
