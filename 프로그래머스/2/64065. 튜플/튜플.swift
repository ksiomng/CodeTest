import Foundation

func solution(_ s: String) -> [Int] {
    var str = s
    str.removeFirst()
    str.removeLast()

    var arrs = [[Int]]()
    
    var components = str.split(separator: "}").map { $0.replacingOccurrences(of: "{", with: "").replacingOccurrences(of: ",", with: " ") }
    
    for comp in components {
        let numbers = comp.split(separator: " ").compactMap { Int($0) }
        if !numbers.isEmpty {
            arrs.append(numbers)
        }
    }
    
    arrs.sort { $0.count < $1.count }
    
    var result = [Int]()
    
    for arr in arrs {
        for num in arr {
            if !result.contains(num) {
                result.append(num)
            }
        }
    }
    
    return result
}