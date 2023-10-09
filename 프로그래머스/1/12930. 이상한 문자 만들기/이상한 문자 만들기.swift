import Foundation

func solution(_ s:String) -> String {
    var arr = s.components(separatedBy: " ")
    
    for i in 0..<arr.count {
        var str = ""
        for (j, char) in arr[i].enumerated() {
            if j % 2 == 0 {
                str += char.uppercased()
            }
            else {
                str += char.lowercased()
            }
        }
        arr[i] = str
    }
    return arr.joined(separator: " ")
}